require 'sinatra'
require 'viddl-rb'
require 'open-uri'


get '/' do
  'Hello world!'
	download_urls = ViddlRb.get_urls("http://www.youtube.com/watch?v=QH2-TGUlwu4")
	file_name = ViddlRb.get_names("http://www.youtube.com/watch?v=QH2-TGUlwu4")

	File.open(file_name.to_s,'wb') do |fo|
		fo.write open(download_urls[0].to_s).read
	end




end