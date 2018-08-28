class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(name:, type:, db:, id:)
    @name = name
    @type = type
    @db = db
    @id = id
  end

  def self.save (name, type, db)
    statement = db.prepare("INSERT INTO pokemon (name, type) VALUES (?,?)")
    statement.execute(name,type)
  end

  def self.find (id, db)
    statement = db.prepare("SELECT * FROM pokemon WHERE id = ?")
    result_set = statement.execute(id)
    results = result_set.collect do |row|
  end
end

end
