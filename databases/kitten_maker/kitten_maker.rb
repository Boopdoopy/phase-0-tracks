# OPERATION KITTEN EXPLOSION!

# talk about Object Relational Mapping (ORM)
# Turn rows into objects (array's, hashes,etc)

# require gems (prewritten ruby)
require 'sqlite3'
require 'faker'

# create SQLite3 database
#Note: Ruby docs have database stuff
# :: <-- scope resolution modulator (ie nested modules)
db = SQLite3::Database.new("kittens.db") #database instance
db.results_as_hash = true #database instance method

# learn about fancy string delimiters
#<<-ANYTHING (whatever string) ANYTHING
#IF NOT EXISTS <--- super important
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL

# create a kittens table (if it's not there already)
db.execute(create_table_cmd)

# add a test kitten
# db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")
# good idea to call puts <table name>.class to check data type

# add LOOOOTS of kittens!
# so. many. kittens. 
#KittenExplosion
def create_kitten(db, name, age)
  db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
end

10000.times do
  create_kitten(db, Faker::Name.name, 0)
end

# explore ORM by retrieving data
# kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end

