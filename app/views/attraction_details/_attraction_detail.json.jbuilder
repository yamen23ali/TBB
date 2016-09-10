json.extract! attraction_detail, :id, :title, :description

json.images attraction_detail.images_urls
json.audios attraction_detail.audios_urls