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

  def modify_first_name(first_name, contact_to_be_modified)
    @contacts.map { |contact| contact.first_name = first_name if contact.id == contact_to_be_modified}
  end

  def modify_last_name(last_name, contact_to_be_modified)
    @contacts.map { |contact| contact.last_name = last_name if contact.id == contact_to_be_modified}
  end

  def modify_email(email, contact_to_be_modified)
    @contacts.map { |contact| contact.email = email if contact.id == contact_to_be_modified}  
  end

  def modify_note(note, contact_to_be_modified)
    @contacts.map { |contact| contact.note = note if contact.id == contact_to_be_modified} 
  end

  def display_all_name
    @contacts.map { |contact| puts "[Name] :  #{contact.first_name} #{contact.last_name}" } 
  end

  def display_all_email
    @contacts.map { |contact| puts "[Email] :  #{contact.email}"  } 
  end

  def display_all_note
    @contacts.map { |contact| puts "[Note] :  #{contact.note}" } 
  end

  def display_all_id
    @contacts.map { |contact| puts "[ID] :  #{contact.id}" } 
  end

  def modify_id(new_id, contact_to_be_modified)
  end
end