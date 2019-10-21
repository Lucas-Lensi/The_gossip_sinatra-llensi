
require 'controller'
class View


def initialize

     @params =Hash.new
end



    def create_gossip
      puts "Qui écris le gossip"
      aut = gets.chomp
      puts "Quel est le gossip"
      cont = gets.chomp


      return @params < { 'author :'    => aut,
                         'content' => cont,
          }
      end

end
