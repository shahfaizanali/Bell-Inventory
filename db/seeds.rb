# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html
#puts 'ROLES'
#YAML.load(ENV['ROLES']).each do |role|
#  puts "ssssssssss", role
#  Role.find_or_create_by_name(role)
#  puts 'role: ' << role
#end
#puts 'DEFAULT USERS'
#user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
#puts 'user: ' << user.name
#user.confirm!
#user.add_role :admin


if Role.last == nil
  ['User','Manager','Admin'].each do |role|
    r=Role.new
    r.name = role
    r.save!
  end
end
if User.last == nil
puts "Adding Fake User"
user=User.new
user.email='admin@store.com'
user.password='12345678'
user.roles << Role.find_by_name("Admin")
user.save!
end

if Profile.last == nil
  p=Profile.new
  p.first_name="Faizan"
  p.last_name="Ali"
  p.user=User.first
  p.save!
end