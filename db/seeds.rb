require './models/user'

(0..10).each do |i|
  User.create(name: "Name #{i}", email: "Email #{i}")
end
