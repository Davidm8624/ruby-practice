#geeks 4 geeks lesson:

=begin

In a Ruby class we may want to expose the instance variables (the variables that are defined prefixed by @ symbol) to other classes for encapsulation. Then, in that case, we use the getter and setter methods. these methods allow us to access a class’s instance variable from outside the class. Getter methods are used to get the value of an instance variable while the setter methods are used to set the value of an instance variable of some class.
Example 1: Simple get method

# Ruby Program of getter method
class CSWebsite
  
  # Constructor to initialize
  # the class with a name
  # instance variable
  def initialize(website)
    @website = website
  end
  
  # Classical get method
  def website
    @website
  end
end
  
# Creating an object of the class
gfg = CSWebsite.new "www.geeksforgeeks.org"
puts gfg.website

Output :

www.geeksforgeeks.org

In this example, if we don’t define the website method in the class, the puts statement used later (gfg.website) would give us an exception because the @website variable is the class’s instance variable and it should not be accessible outside the class by default.

Example 2: Simple set method

# Ruby Program of setter method
class CSWebsite
  
  # Constructor to initialize
  # the class with a name
  # instance variable
  def initialize(website)
    @website = website
  end
  
  # Classical get method
  def website
    @website
  end
  
  # Classical set method
  def website=(website)
    @website = website
  end
end
  
# Creating an object of the class
gfg = CSWebsite.new "www.geeksforgeeks.org"
puts gfg.website
  
# Change the instance variable from
# Outside the class
gfg.website="www.practice.geeksforgeeks.org"
puts gfg.website

Output :

www.geeksforgeeks.org
www.practice.geeksforgeeks.org

In this example, if we don’t define the website= method in the class, then we can’t change the value of the class’s instance variable. With the help of this setter method, we reused the same object for multiple websites.

In the above examples, we can be seen that as the class grows we might have many getter and setter methods most of which follow the same format as shown above. To fix these growing lines of code, Ruby provides us with a quick way to generate the getter and setter methods without explicitly writing them as we did in the above examples. These methods are known as accessor methods. Their purpose is the same as that of a getter or setter.

There are three types of accessors in Ruby

    attr_reader : This accessor generates the automatic Getter method for the given item.
    attr_writer : This accessor generates the automatic Setter method for the given item.
    attr_accessor : This accessor generates the automatic Getter & Setter method for the given item.

    attr_reader: accessor get method
    Example 3:

    # Ruby Program of accessor getter method
    class CSWebsite
      
      # Constructor to initialize
      # the class with a name
      # instance variable
      def initialize(website)
        @website = website
      end
      
      # accessor get method
      attr_reader :website
    end
      
    # Creating an object of the class
    gfg = CSWebsite.new "www.geeksforgeeks.org"
    puts gfg.website

    Output :

    www.geeksforgeeks.org

    Here we have replaced the classical getter method with Ruby’s way to generate the getter method. The output remains the same as the attr_reader has the same function as shown in example 1.
    attr_writer: accessor set method
    Example 4:

    # Ruby Program of accessor getter and setter method
    class CSWebsite
      
      # Constructor to initialize
      # the class with a name
      # instance variable
      def initialize(website)
        @website = website
      end
      
      # accessor get method
      attr_reader :website
      
      # accessor set method
      attr_writer :website
    end
      
    # Creating an object of the class
    gfg = CSWebsite.new "www.geeksforgeeks.org"
    puts gfg.website
      
    # Change the instance variable from
    # Outside the class
    gfg.website="www.practice.geeksforgeeks.org"
    puts gfg.website

    Output :

    www.geeksforgeeks.org
    www.practice.geeksforgeeks.org

    Here we have replaced the classical getter and setter method with Ruby’s way to generate them.
    attr_accessor: accessor get and set method
    Example 5:

    # Ruby Program of accessor getter and setter method
    class CSWebsite
      
      # Constructor to initialize
      # the class with a name
      # instance variable
      def initialize(website)
        @website = website
      end
      
      # accessor get and set method
      attr_accessor :website
    end
      
    # Creating an object of the class
    gfg = CSWebsite.new "www.geeksforgeeks.org"
    puts gfg.website
      
    # Change the instance variable from
    # Outside the class
    gfg.website="www.practice.geeksforgeeks.org"
    puts gfg.website

    Output :

    www.geeksforgeeks.org
    www.practice.geeksforgeeks.org

    Here both the accessors are replaced by a single attr_accessor as it functions as both a getter and a setter.
    Mixed use of the accessors :
    A class may have many instance variables, based on which we may want to have different access permissions of those instance variables to other classes. Here, we see the mixed use of the accessors in a class.
    Example 6:

    # Ruby Program of accessor getter and setter method
    class CSWebsite
      
      # Constructor to initialize
      # the class with a name
      # instance variable
      def initialize(website, id)
        @website = website
        @id = id
      end
      
      # accessor get and set method
      attr_accessor :website
      attr_reader :id
    end
      
    # Creating an object of the class
    gfg = CSWebsite.new "www.geeksforgeeks.org", 12
    puts gfg.website
    puts gfg.id

    Output :

    www.geeksforgeeks.org
    12

    Here the id instance variable is only given the get method using attr_reader because we don’t want some other class to change its id once it’s initialized.

=end


#creating a student class

class Student
  #setter method for @first_name
  def first_name=(value)            #you can not have spaces between the =, before or after or else it looks for and ENd keyword that dont exist
    @first_name=value
  end

  #getter method for @first_name
  def first_name
    @first_name #because this is the only think in the function @first_name gets returned
  end

  #setter method for @last_name
  def last_name=(value)
    @last_name = value
  end

  #getter method for @last_name
  def last_name
    @last_name
  end

  #retusnt he full name when called
  def full_name
    last_name + ", " + first_name
  end
end

#some test
@student = Student.new
@student.first_name = "bob"
@student.last_name = "jones"
puts @student.full_name



#remake of the avobe code but using the arrt_acessor method


class Student
  attr_accessor :first_name, :last_name, :id_number
  def full_name
    last_name + ", " + first_name
  end
end

class Team
attr_accessor :name, :students

def initialize(name)
  @name = name
  @students = []
end

def add_student(id_number, first_name, last_name)
  student = Student.new
  student.id_number = id_number
  student.first_name = first_name
  student.last_name = last_name
  @students << student                  # adds the student that was just created to the array of students... or prob a hash. let me check real quick
end

def print_students
  @students.each do |student|
    puts student.full_name
  end
end
end

team = Team.new("cycling")
team.add_student(2928, "bob", "diffrentBob")
team.add_student(383883, "long", "idnamethingy")
team.print_students