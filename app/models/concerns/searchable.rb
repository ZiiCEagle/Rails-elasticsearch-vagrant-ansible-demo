module Searchable
  extend ActiveSupport::Concern

  included do
    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks # automatically update the index whenever the record changes

    def self.search(query)
      __elasticsearch__.search(
        {
          query: {
            match: {
              title: {
                query: query,
                fuzziness: "auto",
                operator: "and"
              }
            }
          }
        }
      )
    end
  end
end
