class SearchController < ApplicationController
  def index
  	access_token = " YOUR ACCESS TOKEN HERE"
    client = Instagram.client(access_token: access_token)
    default_search = client.tag_search('chicken')

    if params[:q]
      search_query = client.tag_search(params[:q])
      @tag = search_query.present? ? search_query : default_search
    else
      @tag = default_search
    end

    @tag = @tag.first.name
    @results = client.tag_recent_media(@tag)
  end
end
