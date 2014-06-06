class CRM
	attr_accessor :name

	def initialize(name)
		@name = name
		@rolodex = Rolodex.new
		# Allows the rolodex object to be accessed anywhere within the
		# CRM class.
	end

	def print_main_menu
	  puts "[1] Add a new contact"
	  puts "[2] Modify an existing contact"
	  puts "[3] Delete a contact"
	  puts "[4] Display all the contacts"
	  puts "[5] Display an attribute"
	  puts "[6] Exit"
	  puts "Enter a number: "
	end

	def main_menu
		puts "Welcome to #{@name}"
		# Have a getter method for name (since in attr_accessor : name),
		# so the @ in front of name is optional.
		print_main_menu
		selection = gets.chomp.to_i
	  call_option(selection)
	end

	def call_option(selection)
		case selection
		when 1 then add_new_contact
		when 2 then modify_contact
		when 3 then delete_contact
		when 4 then display_contact
		when 5 then display_attribute
		when 6 
			puts "Goodbye!"
			return
		else
			puts "Invalid input.  Please enter a number from 1 to 6."
			main_menu
		end
	end

	def add_new_contact
		print "Enter First Name: "
	  first_name = gets.chomp
	  print "Enter Last Name: "
	  last_name = gets.chomp
	  print "Enter Email Address: "
	  email = gets.chomp
	  print "Enter a Note: "
	  note = gets.chomp
	  @rolodex.add_contact(Contact.new(first_name, last_name, email, note))
	  main_menu
	end
end


class Contact
	attr_accessor :id, :first_name, :last_name, :email, :note

 	def initialize(first_name, last_name, email, notes)
			@first_name = first_name
			@last_name = last_name
			@email = email
			@note = note
 	end
end

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


crm = CRM.new("Bitmaker Labs CRM")
crm.main_menu
contact = Contact.new(id, first_name, last_name, email, notes)