# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#AttachmentType.destroy_all
#City.destroy_all
#Country.destroy_all

AttachmentType.create(name: 'image')
AttachmentType.create(name: 'audio')

countries = Country.create([{name: 'Syria', code: 'SY'}, 
		{ name: 'Germany', code: 'DE'},
		{name: 'USA', code: 'US'}])

cities = City.create([{name: 'Damascus', country: countries[0]}, 
	{name: 'Berlin', country: countries[1]}, 
	{name: 'NY', country: countries[2]}])
