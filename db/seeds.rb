User.create!(email: 'adminaa@gmail.com',password: '123456', admin:'true')
# def create_learner(email)
#     User.create!(
#       email:  email,
#       password: "123456"
#     )
#   end
#   #fake  users
#   1...20.times do |i|
#     create_learner("nadinantire#{i}@gmail.com")
#   end
#   def create_admin(email)
#     User.create!(
#       admin: "true",
#       email:  email,
#       password: "123456"
#     )
#   end
#   #fake  users
#   1...3.times do |i|
#     create_admin("admin_#{i}@gmail.com")
#   end