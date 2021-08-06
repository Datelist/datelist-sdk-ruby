require 'httparty'

class Datelist
  def initialize(api_key) 
  	@api_key = api_key
  	@headers = {
  		'Accept': 'application/json', 
  		'Authorization': @api_key, 
  		'Content-type': 'application/json'
  	}
  end 

  def list_calendars(filters={}) 
  	url = 'https://datelist.io/api/calendars?' + URI.encode_www_form(filters.to_a)
    JSON.parse(HTTParty.get(url, headers: @headers).response.body)
  end

  def list_products(filters={}) 
  	url = 'https://datelist.io/api/products?' + URI.encode_www_form(filters.to_a)
    JSON.parse(HTTParty.get(url, headers: @headers).response.body)
  end

  def list_booked_slots(filters={}) 
  	url = 'https://datelist.io/api/booked_slots?' + URI.encode_www_form(filters.to_a)
    JSON.parse(HTTParty.get(url, headers: @headers).response.body)
  end

  def update_booked_slot(id, data) 
  	url = 'https://datelist.io/api/booked_slots/' + id.to_s
    JSON.parse(HTTParty.patch(url, body: data.to_json, headers: @headers).response.body)
  end
end
