require_relative "../config/environment.rb"

class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

 attr_accessor :name, :grade
 attr_reader :id
 
 def initialize(id=nil, name, grade)
   @id = id 
   @name = name 
   @grade = grade
 end
    
    
  def self.create_table
    sql = <<-SQL 
      CREATE TABLE IF NOT EXISTS students(
      id INTERGER PRIMARY KEY,
      NAME TEXT,
      GRADE TEXT)
    SQL
    DB[:conn].execute(sql)
  end

  def self.drop_table
    sql = <<-SQL
    DROP TABLE IF EXISTS students
    SQL
    
    DB[:conn].execute(sql)
  end
  
  def save
    
  end
  
  
  
  

end
