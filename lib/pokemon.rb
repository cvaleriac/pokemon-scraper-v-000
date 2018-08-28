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

end
