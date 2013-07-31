# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Idea.destroy_all

i1 = Idea.new
i1.name = "Arjun"
i1.description = "an application"
i1.save

i2 = Idea.new
i2.name = "Lily"
i2.description = "a different application"
i2.save
