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
		# Remember that .id is a method defined in the accessor_attr
		# line of crm.rb.
		# contact is assigned an id when the Rolodex class is called.
		@contact_id += 1
	end

	def find(contact.id)
		# if @contacts.include?(contact.id)
		# => return contact.id
		# else
		# => "Contact id does not exist."
		# end
		# return the found contact id to the display_contact method in
		# crm.rb
		return nil
	end

	def delete(contact.id)
		return nil
	end
end