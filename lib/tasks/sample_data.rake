namespace :db do 
	desc "fill database with sample users"
	task populate: :environment do
		admin = User.create!(	name: "Ryan Orrico",
									email: "ryanorrico@gmail.com",
									password: "wests1de",
									password_confirmation: "wests1de" )
		admin.toggle!(:admin)

		99.times do |n|
			name = Faker::Name.name
			email = "example-#{n+1}@railstutorial.org"
			password = "password"
			User.create!(	name: name,
										email: email,
										password: password,
										password_confirmation: password)
		end
	end
end