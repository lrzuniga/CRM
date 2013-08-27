require_relative "database.rb"

class ContactStub
  attr_accessor :id, :first_name

  def info
    "test"
  end
end


describe 'Database' do
  it 'should add contacts' do
    db = Database.new()
    contact = ContactStub.new
    db.add_contact(contact)
    db.all_contacts[0].should.equal? contact
  end
end