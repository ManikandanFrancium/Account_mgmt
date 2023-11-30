# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


account = Account.create(
    first_name: 'Ravi',
    last_name: 'kumar',
    email: 'ravikumar@gmail.com',   
    account_number: '35896537984687',
    phone_number: '32164815754'


)

20.times do |i|
    puts "Cratting account #{i+1}"
    Account.create(
        first_name: "account #{i+1}",
        last_name: "Lname #{i+1}",
        email: "account #{i+1}@gmail.com",
        account_number:"account #{i+1}",
        phone_number:"account #{i+1}"
    ) 
end
