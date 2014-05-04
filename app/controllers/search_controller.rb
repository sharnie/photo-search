class SearchController < ApplicationController
  def index
  	access_token = "353749247.4f6bccc.e0ef76fa6bc54751994cf2ba58a3f7f2"
		client = Instagram.client(:access_token => access_token)
  	tags = params[:q] ? client.tag_search(params[:q]) : client.tag_search('chicken')
  	@tag = tags.present? ? tags[0].name : 'chicken'
		@results = client.tag_recent_media(@tag)
  end
end
