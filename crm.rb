require_relative "contact"
require_relative "rolodex"

class CRM
	attr_accessor :name

	def self.run(name)
		# A class method named run (called on the blueprint/class using 
		# self., rather than being called on an object).
		crm = self.new(name)
		# Creating a new crm object.  It does not need to be accessed
	# outside of this method.
		crm.main_menu
	end

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
		selection = gets.to_i
		puts "\e[H\e[2J"
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

	def modify_contact
		print "Enter a contact's id to edit the contact's details: "
		#	@rolodex.find(contact)
	end

	def delete_contact
		print "Enter a contact's id to delete the entry: "
		# contact = gets.chomp.to_i
		# @rolodex.find(contact)
		puts "Are you sure you wish to delete contact #{contact_id}?  Y/N"
		# if gets = "Y"
		# 	@rolodex.delete(contact)
		# elsif gets = "N"
		# 	main_menu
		# else
		#		puts "Please type either \"Y\" or \"N\"."	
		# end
	end

	def display_contact
		print "Enter a contact's id to display the contact's details: "
		# contact = gets.chomp.to_i
		# @rolodex.find(contact)

	end

	def display_attribute
		print "Select an attribute to display for all contacts: "
		# attribute = gets.chomp.to_i
		# case attribute
		# when 1 then ewfmwlfm
		# when 2 then effergreg
		# end
		# @contact.display_values(attribute)
	end
end

CRM.run("Bitmaker Labs CRM")
# This is a class method, which is called directly on the class
# name rather than on the object.

crm = CRM.new("Bitmaker Labs CRM")
crm.main_menu
# crm.main_menu is an instance method being called on the crm 
# instance of the CRM class.
contact = Contact.new(id, first_name, last_name, email, notes)