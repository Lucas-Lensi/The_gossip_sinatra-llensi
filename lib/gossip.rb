require 'csv'
require 'pry'



class Gossip
  attr_accessor :author, :content
  def initialize(author, content)
    @author = author
    @content = content
  end

  def save
    array = [@author, @content]
      CSV.open("./db/gossip.csv", "a") do |csv|
        csv << array
      end
  end

  def read
      all_gossip=[]
      table=CSV.read('./db/gossip.csv',headers:true,header_converters: :symbol,converters: :all)
      table.each
        all_gossip << Gossip.new(@author, @content)

  end



end

#binding.pry
