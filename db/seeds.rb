# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user_admin = User.where({
    email: "elgonzo292@gmail.com"
  }).first_or_create

user_admin.password = "password123"
user_admin.add_role :admin
user_admin.save