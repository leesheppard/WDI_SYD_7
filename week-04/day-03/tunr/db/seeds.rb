User.destroy_all

# normal user
User.create({
  email: "normal@example.com",
  password: "password",
  password_confirmation: "password",
  confirmed_at: Time.now
})

# admin
User.create({
  email: "admin@example.com",
  password: "password",
  password_confirmation: "password",
  confirmed_at: Time.now,
  admin: true
})