class Database

  @contacts = []
  @id = 1000

  def self.add_contact(contact)
    contact.id = @id
    @contacts << contact
    @id += 1
  end

  def self.contacts
    @contacts
  end

end

  def add_new_contact
    print "Enter First Name: "
    @first_name = gets.chomp
    print "Enter Last Name: "
    last_name = gets.chomp
    print "Enter Email Address: "
    email = gets.chomp
    print "Enter a Note: "
    note = gets.chomp
    contact = Contact.new(@first_name, last_name, email, note)
    #test - puts contact.first_name
    #test - puts @first_name
    #test - puts last_name
    #test - puts "made it to here"
  end

  def modify_existing_contact
  
  end

  def delete_existing_contact
    
  end

  def display_existing_contact
    
  end

  def display_existing_attribute
    
  end

contact = Contact.new
Database.add_contact(contact)
Database.contacts

