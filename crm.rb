require_relative "database"
require_relative "contact"

class CRM

	def initialize(crm_name)
		@crm_name = crm_name
		@db = Database.new()
	end

	def clear_screen
		puts "\e[H\e[2J"
		puts "BML CRM Application"
	end

	def print_main_menu
		puts
		puts "[1] Add a new contact"
		puts "[2] Modify an existing contact"
		puts "[3] Delect a contact"
		puts "[4] Display all the contacts"
    	puts "*[5] Display an attribute" 
    	puts "[6] Exit"
    	puts
    	puts "Select an option:"
	end

	def main_menu
		print_main_menu
		user_selected = gets.to_i
		call_option(user_selected)
	end

	def call_option(user_selected)
		add_new_contact if user_selected == 1
		modify_existing_contact  if user_selected == 2
		delete_contact if user_selected == 3
		puts @db.all_db_contacts if user_selected == 4
		display_attribute if user_selected == 5
		exit_program if user_selected == 6
		find_by_id if user_selected == 7
		main_menu
	end

	def find_by_id
		puts @db.all_db_contacts
		puts "Select ID:"
		id_to_find = gets.chomp.to_i
		@db.find_by_id(id_to_find)
	end

	def add_new_contact
		print "Enter First Name: "
		first_name = gets.chomp
		print "Enter Last Name: "
		last_name = gets.chomp
		print "Enter Email: "
		email = gets.chomp
		print "Enter Note: "
		note = gets.chomp

		contact = Contact.new(first_name, last_name, email, note)
		@db.add_contact(contact)
	end

	def modify_existing_contact
		puts "Enter ID of contact to be modified:" 
    contact_to_be_modified = gets.chomp.to_i
    
      puts "[1] first name" 
      puts "[2] last name" 
      puts "[3] email"
      puts "[4] note" 
      puts "[5] id" 
      puts "Select attribute to modify"
      attribute_to_be_modified = gets.chomp

    case attribute_to_be_modified
      when "1" then 
                    puts "input new first_name"
                    first_name = gets.chomp
                    @db.modify_first_name(first_name, contact_to_be_modified) 
                    main_menu
      when "2" then
                    puts "input new last_name"
                    last_name = gets.chomp
                    @db.modify_last_name(last_name, contact_to_be_modified) 
                    main_menu
      when "3" then
                    puts "input new email"
                    email = gets.chomp
                    @db.modify_email(email, contact_to_be_modified) 
                    main_menu
      when "4" then
                   puts "input new note"
                    note = gets.chomp
                    @db.modify_note(note,contact_to_be_modified) 
                    main_menu 

      when "5" then
                    puts "input new id"
                    new_id = gets.chomp
                    @db.modify_id(new_id, contact_to_be_modified) 
                    main_menu
                  else
                  	main_menu
                  end
    end

	def delete_contact
		puts "Select contact do delete by ID number"
		puts @db.all_db_contacts
		contact_to_delete = gets.chomp.to_i
		@db.delete_contact(contact_to_delete)
		main_menu
	end

def display_attribute
    puts "[1] Name" 
    puts "[2] email" 
    puts "[3] note"
    puts "[4] ID" 
    puts "Select attribute to display:"
    attribute_to_be_displayed = gets.chomp
    
    case attribute_to_be_displayed
    	when "1" then
                  all_name = @db.display_all_name
                  all_name
                  main_menu
    	when "2" then
                  all_email = @db.display_all_email
                  all_email
                  main_menu
    	when "3" then
                  all_note = @db.display_all_note
                  all_note
                  main_menu               
    	when "4" then
                  all_id = @db.display_all_id
                  all_id
                  main_menu              
    	else main_menu

    	end
  end

	def exit_program
		abort("Exiting BML CRM application")
	end

end

a_crm_app = CRM.new("crm")
a_crm_app.clear_screen
a_crm_app.main_menu