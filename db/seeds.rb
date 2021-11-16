# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'pry-byebug'

myAdmin = User.new(
  username: "Master mind",
  last_name: "Sky",
  first_name: "Luc",
  password: "Luc1984",
  email: 'fg@hotmail.com',
  description: 'Super admin de la plateforme',
  admin: true
)
myAdmin.save!

maverick = User.new(
  username: "Tog Gun",
  last_name: "Walker",
  first_name: "Maverick",
  password: "Mav1984",
  email: 'fgb@hotmail.com',
  description: 'Eleveur spécialiste des pigeons rares du monde entier. Tenant du titre du World Champion Pigeon Contest depuis 10 ans'
)
maverick.save!

dianaprince = User.new(
  username: "Diana",
  last_name: "Prince",
  first_name: "Diana",
  password: "Dia1984",
  email: 'f@hotmail.com',
  description: 'Super testeuse de la plateforme'
)
dianaprince.save!

mypigeon1 = Pigeon.new(
  name: "Vaillant",
  user_id: maverick.id,
  address: "#{Faker::Address.street_address}, #{Faker::Address.city}, #{Faker::Address.country}",
  description: "Vaillant est un pigeon de 6 ans, de belle prestance il est capable de traverser la manche même par tempête. Si chercher un pigeon pour de grandes distances et un message de plusieurs feuillets. C'est votre oiseau !",
  price_day: 20,
  breed: "ramier"
)
# binding.pry
mypigeon1.save!

mypigeon2 = Pigeon.new(
  name: "Royal",
  user_id: maverick.id,
  address: "#{Faker::Address.street_address}, #{Faker::Address.city}, #{Faker::Address.country}",
  description: "Royal est un pigeon de 5 ans, espèce rare flamboyante, idéal pour les messages romantiques, sont roucoulement est reconnu pour une mélodie douce. Idéal pour les grandes occcasions de délivrer sa flamme",
  price_day: 32,
  breed: "nicobar"
)
mypigeon2.save!

mypigeon3 = Pigeon.new(
  name: "Bella",
  user_id: maverick.id,
  address: "#{Faker::Address.street_address}, #{Faker::Address.city}, #{Faker::Address.country}",
  description: "Bella est une jeune pigeonne de 2 ans au plumage délicat mais à la rapidité redoutable, idéal pour les messages urgents! Il a démontré ses talents de dropper",
  price_day: 15,
  breed: "nicobar"
)
mypigeon3.save!

mypigeon4 = Pigeon.new(
  name: "Victoria",
  user_id: maverick.id,
  address: "#{Faker::Address.street_address}, #{Faker::Address.city}, #{Faker::Address.country}",
  description: "Victoria est une pigeonne expérimentée de 8 ans. Attention caractère bien trempé, elle arrive quand elle veut mais elle fera un effet wahou.",
  price_day: 40,
  breed: "bleu couronné"
)
mypigeon4.save!

mybooking = Booking.new(
  user_id: User.third.id,
  pigeon_id: Pigeon.second.id,
  address: "#{Faker::Address.street_address}, #{Faker::Address.city}, #{Faker::Address.country}",
  date: Time.now,
  recipient_name: 'Augustin Lovekind',
  message: 'Cher Augustin, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  option_droppings: false,
  option_cooing: true
)
mybooking.save!

mybooking2 = Booking.new(
  user_id: dianaprince.id,
  pigeon_id: mypigeon3.id,
  address: "#{Faker::Address.street_address}, #{Faker::Address.city}, #{Faker::Address.country}",
  date: Time.now,
  recipient_name: 'Arès',
  message: 'Maudit Arès, Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?',
  option_droppings: true,
  option_cooing: false
)
mybooking2.save!
