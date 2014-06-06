class Contact
	attr_accessor :id, :first_name, :last_name, :email, :note

 	def initialize(first_name, last_name, email, notes)
			@first_name = first_name
			@last_name = last_name
			@email = email
			@note = note
 	end

 	def display_attributes
 		return nil
 	end
end
