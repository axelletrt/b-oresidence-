# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

20.times do 
    Tenant.create(email: Faker::Internet.email)
    Studio.create(name: Faker::Address.street_name, price: Faker::Number.decimal)
    Stay.create(checkin_date: Faker::Date.backward, checkout_date: Faker::Date.forward, tenant_id: Faker::Number.positive(Tenant.first.id, Tenant.last.id), studio_id: Faker::Number.positive(Studio.first.id, Studio.last.id))
end 
