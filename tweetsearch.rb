require 'elasticsearch/model'

class TweetSearch
  include Elasticsearch::Model
  index_name "tweets"
  document_type "tweet"
  settings index: { number_of_shards: 1 } do
    mappings: dynamic: 'false' do
      indexes :created_at, analyzer: 'english', index_options: 'offsets'
      indexes :id, analyzer: 'english', index_options: 'offsets'
      indexes :id_str, analyzer: 'english', index_options: 'offsets'
    end
  end
end

#TweetSearch.__elasticsearch__.client = Elasticsearch::Client.new host: 'https://bc6953da08cc2d8dbd92b8e0c00f23f1.us-east-1.aws.found.io:9243'
#TweetSearch.__elasticsearch__client.cluster.health
