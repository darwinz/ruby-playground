require "./contact"
require "yaml"

class AddressBook
  attr_reader :contacts

  def initialize
    @contacts = []
    open()
  end

  def open
    if File.exist?("contacts.yml")
      @contacts = YAML.load_file("contacts.yml")
    end
  end

  def save
    File.open("contacts.yml", "w") do |file|
      file.write(contacts.to_yaml)
    end
  end

  def run
    loop do
      puts "Address Book"
      puts "a: Add Contact"
      puts "p: Print Address Book"
      puts "s: Search"
      puts "e: Exit"
      print "Enter your choice: "
      input = gets.chomp.downcase
      case input
        when 'a'
          add_contact
        when 'p'
          print_contact_list
        when 's'
          print "Search term: "
          search = gets.chomp
          find_by_name(search)
          find_by_phone_number(search)
          find_by_address(search)
        when 'e'
          save()
          break
      end
      puts "\n"
    end
  end
end
