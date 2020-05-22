# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.create(first_name: "Dan", last_name: "Foley")
Student.create(first_name: "Danny", last_name: "Orendorff")
Student.create(first_name: "Jesse", last_name: "Harrod")
Student.create(first_name: "Leigh", last_name: "Dotey")

SchoolClass.create(title: "Math 101", room_number: 1)
SchoolClass.create(title: "Home Ec", room_number: 3)
SchoolClass.create(title: "Advanced JS", room_number: 7)
SchoolClass.create(title: "TensorFlow", room_number: 2)