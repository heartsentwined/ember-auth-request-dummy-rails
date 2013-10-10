require 'rails'
require 'ember/auth/request/dummy/source'
require 'ember/auth/request/dummy/rails/version'
require 'ember/auth/request/dummy/rails/engine'

module Ember
  module Auth
    module Request
      module Dummy
        module Rails
          class Railtie < ::Rails::Railtie
            initializer 'ember-auth.request.dummy.setup-vendor', :group => :all do |app|
              app.assets.append_path \
                File.expand_path('..', ::Ember::Auth::Request::Dummy::Source.bundled_path)
            end
          end
        end
      end
    end
  end
end
