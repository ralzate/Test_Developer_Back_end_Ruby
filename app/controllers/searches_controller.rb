# frozen_string_literal: true

class SearchesController < ApplicationController
  def index
    @my_favorites = MyFavorite.all
    @my_favorites = @my_favorites.paginate(page: params[:page], per_page: 5)

    source = 'https://api.chucknorris.io/jokes/random'
    resp = Net::HTTP.get_response(URI.parse(source))
    data = resp.body
    @data = JSON.parse(data)

    respond_to do |format|
      format.html
      format.js do
        words_search = allowed_values[:words]
        records_found = Result.by_query(words_search)
        records_found = SaveCompletedSearches.new.call(words_search) if records_found.empty?
        records_found = records_found.paginate(page: params[:page], per_page: 5)

        render(partial: 'list', locals: { records_found: }, content_type: 'text/plain')
      end
    end
  end

  def create; end

  private

  def allowed_values
    params.require(:search).permit(:words)
  end
end
