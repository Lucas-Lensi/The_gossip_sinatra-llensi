require 'csv'

class Gossip
  attr_accessor :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end

  def save
    CSV.open("./db/gossip.csv", "ab") do |csv|
      csv << [@author, @content]
    end
  end

  def self.all
    all_gossips = Array.new
    CSV.read("./db/gossip.csv").each do |csv_line|
      all_gossips << Gossip.new(csv_line[0], csv_line[1])
    end
    return all_gossips
  end

  def self.find(id)
    array_gossips = self.all
    return array_gossips[id.to_i-1]
  end

  def self.edit(i, new_author, new_content)
    gossip_array = CSV.read("./db/gossip.csv")
    gossip_array[i-1][0] = new_author
    gossip_array[i-1][1] = new_content
    CSV.open("./db/gossip.csv", "w") do |csv|
      gossip_array.each do |potin|
        csv << potin
      end
    end
  end
end
