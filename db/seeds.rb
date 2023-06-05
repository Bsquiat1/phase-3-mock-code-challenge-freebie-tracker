puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# Create freebies
dev1 = Dev.first
dev2 = Dev.second
dev3 = Dev.third

company1 = Company.first
company2 = Company.second
company3 = Company.third

Freebie.create(item_name: "T-shirt", value: 10, dev: dev1, company: company1)
Freebie.create(item_name: "Mug", value: 5, dev: dev2, company: company1)
Freebie.create(item_name: "Notebook", value: 8, dev: dev1, company: company2)
Freebie.create(item_name: "Pen", value: 2, dev: dev3, company: company2)
Freebie.create(item_name: "Sticker", value: 1, dev: dev2, company: company3)

puts "Seeding done!"
