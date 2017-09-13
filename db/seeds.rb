# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


City.create([
	{name: 'Austin', emergency_number: '911', extra_info: 'There is plenty of high ground in Austin, go to it!'},
	{name: 'Tampa', emergency_number: '911', extra_info: 'Downtown and island power grids are being shut down at 2pm today, Sept 10th'}
])

Survivor.create([
	{name: 'Aaron', number: '800-555-5555', lat: 30.267153, lng: -97.743061, city_id: 1},
	{name: 'Mark', number: '800-555-5555', lat: 30.297153, lng: -97.743061, city_id: 1},
	{name: 'Pat', number: '800-555-5555', lat: 27.950575, lng: -82.457178, city_id: 2}
])