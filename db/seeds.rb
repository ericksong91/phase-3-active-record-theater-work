puts "Creating roles..."
10.times do
    Role.create(character_name: Faker::Superhero.name)
end


puts "Creating auditions..."

25.times do 
    Audition.create(actor: Faker::Name.name, location: Faker::Nation.capital_city, 
        phone: Faker::PhoneNumber.phone_number, hired: false, 
        role_id: Role.all.sample.id)
end



    