# frozen_string_literal: true

class SaveCompletedSearches
  def call(query)
    data = GetApiData.new.call(query)['result']

    return Result.none if data.empty?

    new_results = data.map do |json_result|
      {
        query:, url: json_result['url'], value: json_result['value'],
        created_at: Time.current, updated_at: Time.current
      }
    end

    Result.insert_all(new_results)
    Result.by_query(query)
  end
end
