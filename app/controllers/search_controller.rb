class SearchController < ApplicationController
  def index
  	access_token = "353749247.4f6bccc.e0ef76fa6bc54751994cf2ba58a3f7f2"
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
