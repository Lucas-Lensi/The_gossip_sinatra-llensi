require 'gossip'
require 'view'

class Controller
  def initialize
    @gossip = Gossip.new("walid","sarra")
    @view = View.new#(aut,cont)

  end


  def create_gossip
    params =Hash.new
    params = @view.create_gossip
    @gossip = Gossip.new(params[:author],params[:content])
    @gossip.save
  end

  def read_gossip
    @gossip.read
  end

end
