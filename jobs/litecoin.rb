require 'net/http'
require 'json'
require 'uri'

SCHEDULER.every '5s' do
  uri = URI.parse('https://api.coinbase.com/v2/prices/LTC-USD/spot')
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true
  request = Net::HTTP::Get.new(uri.request_uri)
  response = http.request(request)
  json_response = JSON.parse(response.body)
  ltc_price = json_response['data']['amount']
  ltc_price = '%.2f' % ltc_price.delete(',').to_f
  #puts btc_price
  send_event('ltcprice', { value: ltc_price.to_f} )
end
