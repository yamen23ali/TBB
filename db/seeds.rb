# Clear like this 
# rake db:drop db:create db:migrate db:seed

#=========== Attachment Types
image_att = AttachmentType.create(name: 'image')
audio_att = AttachmentType.create(name: 'audio')

#=========== Countries
countries = Country.create([{name: 'Syria', code: 'SY'}, 
		{ name: 'Germany', code: 'DE'},
		{name: 'USA', code: 'US'}])

#=========== Cities
cities = City.create([{name: 'Damascus', country: countries[0]}, 
	{name: 'Berlin', country: countries[1]}, 
	{name: 'NY', country: countries[2]}])

#=========== Users
user = User.create(name: 'yamen')

#=========== Tours
tour = Tour.create(title: 'Test Tour', description: 'This is test tour', 
	price: 10, is_trans_included: true, estimated_time: '10 Hours', producer: user, city: cities[0])

#=========== Attractions
attraction = Attraction.create(title: 'Test Attraction', description: 'So cool att', 
	address: 'Genslerstraße 55, 13055 Berlin', trans_info: 'Take M13 for 10 stops', tour: tour)

#=========== Attraction Details
attraction_detail = AttractionDetail.create(title: 'Test AD', description: 'Nice detail', attraction: attraction)

#=========== Attachment
Attachment.create(attachment_type: image_att, attraction: attraction, url: 'Image Url1 for att')
Attachment.create(attachment_type: image_att, attraction: attraction, url: 'Image Url2 for att')
Attachment.create(attachment_type: audio_att, attraction: attraction, url: 'Audio Url1 for att')
Attachment.create(attachment_type: audio_att, attraction: attraction, url: 'Audio Url2 for att')

Attachment.create(attachment_type: image_att, attraction_detail: attraction_detail, url: 'Image Url1 for attd')
Attachment.create(attachment_type: audio_att, attraction_detail: attraction_detail, url: 'Audio Url2 for attd')

#=========== Review
Review.create(title: 'Nice job', content: 'good', score: 10, tour: tour, user: user)













