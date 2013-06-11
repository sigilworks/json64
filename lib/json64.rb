# Gem that provides a new View Renderer to plug into Rails 3.2+
# in order to send Base64-encoded JSON entities over the wire.
#
# @version: 0.1.0
# @author: tjpalmer (sigilworks)
# 01/21/2013

require 'base64'
require 'action_controller'

module Json64

	Mime::Type.register 'application/json', :json64

	ActionController::Renderers.add :json64 do |json64, options|
	      json64 = json64.to_json(options) unless json64.kind_of? String
	      json64 = Base64.urlsafe_encode64(json64)
	      json64 = "#{options[:callback]}(#{json64})" unless options[:callback].blank?
	      self.content_type ||= Mime::JSON
	      json64
	end

end