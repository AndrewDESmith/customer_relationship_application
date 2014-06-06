class Rolodex
# Container class to handle adding things, finding things, 
# storing things.
	def initialize
		@contact_id = 1000
		@contacts = []
	end

	def add_contact(contact)
		@contacts << contact
		contact.id = @contact_id
		# contact is assigned an id when the Rolodex class is called.
		@contact_id += 1
	end
end