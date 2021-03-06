# require_relative "connection" # require the db connection file that connects us to PSQL, prior to loading models
# require_relative "../models/apartment" # require the Student class definition that we defined in the models/student.rb file
# require_relative "../models/tenant"

Apartment.destroy_all
Tenant.destroy_all


apartment_one = Apartment.create(address: "2453 W. Hollywood", monthly_rent: 3450, sqft: 987, num_beds: 3, num_baths: 2)
apartment_two = Apartment.create(address: "345 E. Main", monthly_rent: 1350, sqft: 1287, num_beds: 4, num_baths: 2)
apartment_three = Apartment.create(address: "584 Kedvale", monthly_rent: 2000, sqft: 2200, num_beds: 5, num_baths: 5)
apartment_two.Tenant.create(name: "John Q. Public", age:45, gender:"male")
apartment_two.Tenant.create(name:"Susie Q. Public", age:42, gender:"female")
apartment_two.Tenant.create(name:"John Public Jr.", age:13, gender:"male")
apartment_two.Tenant.create(name:"Kelly Public", age:11, gender:"female")
apartment_two.Tenant.create(name:"Billy Public", age:5, gender:"male")
apartment_one.Tenant.create(name:"Jorge Ramos", age:43, gender:"male")
apartment_one.Tenant.create(name:"Anon E. Mous", age:34, gender:"female")
apartment_three.Tenant.create(name:"Daniel Alexander", age:30, gender:"male")
apartment_three.Tenant.create(name:"Alexis Alexander", age:27, gender:"female")
apartment_three.Tenant.create(name:"Langston Alexander", age:1, gender:"male")

$renters = Tenant.all
$hollywood = Tenant.where(apartment_id: 1)
anon = Tenant.find_by(name: "Anon E. Mous")
anon.name = "Shannon Smith"
anon.save
Tenant.find_by(name: "Billy Public").update(name: "William Public")
Tenant.find_by(name: "Kelly Public").destroy
