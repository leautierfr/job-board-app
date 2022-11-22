# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Company.create(name: "Costco", logo: "https://1000logos.net/wp-content/uploads/2017/08/Font-Costco-Logo.jpg", description: "big-box retail store")
Company.create(name: "Lidl", logo: "https://en.wikipedia.org/wiki/Lidl#/media/File:Lidl-Logo.svg", description: "discount retail store")
Company.create(name: "McDonald's", logo: "https://en.wikipedia.org/wiki/McDonald%27s#/media/File:McDonald's_Golden_Arches.svg", description: "fast food restaurant")

Job.create(company_id: 1, title: "cashier", description: "handle customer purchases", url: "https://en.wikipedia.org/wiki/Cashier", location: "Washington", active: "open", salary_range: 15000-20000)
Job.create(company_id: 2, title: "manager", description: "assist and direct multiples employees", "url:https://en.wikipedia.org/wiki/Management", location: "New York", active: "open", salary_range: 15000-20000)
Job.create(company_id: 2, title: "cook", description: "cook meals for customers", active "open", salary_range: 20000-25000)
