class Contact

attr_accessor :first_name, :last_name, :email, :note   #this replaces everything below

	def initialize (first_name, last_name, email, note)
		@first_name = first_name
		@last_name = last_name
		@email = email
		@note = note
	end
end


#contact.email # => "adianwiart@gmail.com"
#contact.note("Buy him a present.")