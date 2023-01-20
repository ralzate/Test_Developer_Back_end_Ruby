# frozen_string_literal: true

require 'rails_helper'

describe SaveCompletedSearches do
  describe '#call' do
    let(:results_with_seed) do
      {
        'total' => 2,
        'result' => [
          {
            'categories' => [],
            'created_at' => '2020-01-05 13:42:29.855523',
            'id' => 'Fu9vGLOIRF6q1JTK6Hqu2A',
            'updated_at' => '2020-01-05 13:42:29.855523',
            'url' => 'https://api.chucknorris.io/jokes/Fu9vGLOIRF6q1JTK6Hqu2A',
            'value' => 'Project Mayhem was inspired by a neighborhood club Chuck Norris formed as a child.'
          },
          {
            'categories' => [],
            'created_at' => '2020-01-05 13:42:22.980058',
            'id' => 'm0crgm8LR8WIAdeXslUABw',
            'updated_at' => '2020-01-05 13:42:22.980058',
            'url' => 'https://api.chucknorris.io/jokes/OvZihJlQSZSv66a-9Qx_3Q',
            'value' => 'They wanted Amy Winehouse to go to rehab, but she said no, no, no. So Chuck Norris killed her.'
          }
        ]
      }
    end
  end
end
