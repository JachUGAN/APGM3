# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user_list = [ 
	["test","author","testauthor","author@test.com","author","12345678","12345678"]
]

articles_list = [
	["article 1", "This is article 1", "1"],
	["article 2", "This is article 2", "1"],
	["article 3", "This is article 3", "1"],
	["article 4", "This is article 4", "1"],
	["article 5", "This is article 5", "1"],
	["article 6", "This is article 6", "1"],
	["article 7", "This is article 7", "1"],
	["article 8", "This is article 8", "1"]
]

user_list.each_with_index do |user, index|
	attrs = {
		first_name: user_list[index][0],
		last_name: user_list[index][1],
		username: user_list[index][2],
		email: user_list[index][3],
		role: user_list[index][4],
		password: user_list[index][5],
		password_confirmation: user_list[index][6]
	}
User.create(attrs)
end

articles_list.each_with_index do |article, index|
	attrs = {
		title: articles_list[index][0],
		content: articles_list[index][1],
		user_id: articles_list[index][2]
	}
Post.create(attrs)
end