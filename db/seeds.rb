puts "cleaning up database..."
[Restaurant, User].each(&:destroy_all)

user = User.create!(email: "john.doe@example.com", password: "123456")

RESTAURANTS = [
  {
    name: "Mario's",
    address: "Venice",
    user: user
  },
  {
    name: "Falafel",
    address: "Ben Yehuda",
    user: user
  },
  {
    name: "Moe's",
    address: "Springfield",
    user: user
  }
]

puts "creating restaurants..."

Restaurant.create!(RESTAURANTS)

puts "created #{Restaurant.count} restaurants"
