json.extract! tourist_attraction, :id, :title, :description, :trans_info, :address, :latitude , :longitude

json.images tourist_attraction.images_urls
json.audios tourist_attraction.audios_urls