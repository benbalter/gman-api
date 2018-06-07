require 'sinatra'
require 'sinatra/jsonp'
require 'gman'

country_methods = %i[name numeric alpha2 alpha3 calling continent iban currency]
domain_methods = %i[name tld sld trd]
instance_methods = %i[
  valid? email? type state? district? cog? city?
  federal? county? state city agency dotgov?
]

def serialize(object, methods)
  methods.map { |m| [m, object.public_send(m)] }.to_h
end

get '/' do
  halt 400, 'You must provide a query string' unless params['q']
  gman = Gman.new(params['q'])
  hash = serialize(gman, instance_methods)
  hash[:domain]  = serialize(gman.domain, domain_methods)
  hash[:country] = serialize(gman.country, country_methods)
  jsonp hash
end
