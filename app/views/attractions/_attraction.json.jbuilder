json.extract! attraction, :id, :title, :description, :trans_info, :address, :latitude , :longitude

json.images attraction.images_urls
json.audios attraction.audios_urls