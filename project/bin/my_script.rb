require 'addressable/uri'
require 'rest-client'

def index_users
    url = Addressable::URI.new(
      scheme: 'http',
      host: 'localhost',
      port: 3000,
      path: '/users.html',
      # query_values: {
      #   'some_stuff[a_key]' => 'something',
      #   'some_category[inner_inner_hash][key]' => 'value',
      #   'something_else' => 'a thing'
      # }
    ).to_s

    puts RestClient.get(url)
end

# index_users


def create_user(name, email)
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users.json'
  ).to_s

  puts RestClient.post(
    url,
    { user: { name: name, email: email } }
  )
end

begin
  create_user("Gizmo")
rescue StandardError => e
  puts "Error: #{e.message}"
end
