require_relative 'contact'
require_relative 'database'

class CRM

	def initialize(crmname)
    	puts "This instance of CRM is called:" + crmname
	end

	def print_main_menu
		clear_screen
	  	puts "[1] Add a new contact"
	  	puts "[2] Modify an existing contact"
	  	puts "[3] Delete a contact"
	  	puts "[4] Display all the contacts"
	  	puts "[5] Display an attribute" 
	  	puts "[6] Exit"
	  	puts "Enter a number: "
	end

	def main_menu
	  	print_main_menu
	  	user_selected = gets.to_i
	  	call_option(user_selected)
	end

	def call_option(user_selected)
		add_new_contact if user_selected == 1
	  	modify_existing_contact if user_selected == 2
	  	delete_existing_contact if user_selected == 3
	  	display_existing_contacts if user_selected == 4
	  	display_existing_attribute if user_selected == 5
	end

	def clear_screen
		puts "\e[H\e[2J"
	end

end

newcrm=CRM.new
newcrm.main_menu

#contact = Contact.new
#contact1 = Contact.new
#p contact
#p contact1
#Database.add_contact(contact)
#Database.add_contact(contact1)
#p contact
#p contact1
#Database.contacts


