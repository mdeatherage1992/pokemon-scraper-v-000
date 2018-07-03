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



def self.save(id, name, type, db)
  database_connection.execute("INSERT INTO  (name, breed, age) VALUES (?, ?, ?)",name, breed, age)
end


end
