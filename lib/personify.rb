require "http"
require "hashie"

class Personify
  def initialize(public_key, private_key, base_url = "")
    @base_url = base_url

    @client = HTTP
      .basic_auth(user: public_key, pass: private_key)
      .headers(accept: :json, content_type: :json)
  end

  def get(path, params = nil)
    objectify @client.get("#{@base_url}#{path}", params: params).parse
  end

  private
  def objectify(hash)
    Hashie::Mash.new hash
  end
end
