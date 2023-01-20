# frozen_string_literal: true

class GetApiData
  include HTTParty

  base_uri 'https://api.chucknorris.io'
  headers 'Content-Type' => 'application/json'

  def call(value)
    self.class.get("/jokes/search?query=#{value}")
  end
end
