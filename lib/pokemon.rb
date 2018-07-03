require 'pry'
class Pokemon
   attr_accessor :id, :name,:type,:db
   @@all = []
  def initialize(id:,name:,type:,db:)
    @id = id
    @name = name
    @type = type
    @db = db
    @@all << self
end

def self.save(name,type,db)
  db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
end

def self.find(id,db)
  pokemon_object = db.execute("SELECT * FROM pokemon where id = ?", id)
  
end


end
