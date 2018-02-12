# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
seed_file = Rails.root.join('db', 'seeds.yml')
seed = YAML::load_file(seed_file)
hash = ActiveSupport::HashWithIndifferentAccess.new(seed)


=begin
hash["projects"].each do |project|
	p project["title"]
	project["todos"].each do |todo|
		p todo["text"]
		puts todo["isCompleted"]
	end
		
	p "next"

end
=end



hash["projects"].each do |project|
	tmpProject = Project.new
	tmpProject["title"] = project["title"]

	project["todos"].each do |todo|
		tmpTodo = Todo.new
		tmpTodo["text"] = todo["text"]
		tmpTodo["isCompleted"] = todo["isCompleted"]
		tmpTodo.save()
		tmpProject.todos << tmpTodo
	end
p '\n'
p '\n'
p '\n'
	tmpProject.save()
end
