class Database

  def initialize
    @contacts = []
    @id = 1000
  end

  def add_contact(contact)
    contact.id = @id
    @contacts << contact
    @id += 1
  end

	def all_db_contacts
		@contacts.map {|contact| contact.info}.join("\n")
	end

  def delete_contact(contact_to_delete)
    @contacts.delete_if { |contact| contact.id == contact_to_delete   }
  end

  def modify_existing_contact(contact_to_be_modified)
    @contacts.select { |contact| contact.id == contact_to_be_modified }
  end

  def find_by_id(id_to_find)
    @contacts.select { |contact| @contacts.include?(id_to_find)}
  end


end