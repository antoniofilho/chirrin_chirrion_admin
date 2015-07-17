require 'chirrin-chirrion'

module ChirrinChirrionAdmin
  class Engine < ::Rails::Engine
    require 'jquery-rails'
    isolate_namespace ChirrinChirrionAdmin

    config.generators do |g|
      g.test_framework :rspec, fixture: false
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
      g.assets false
      g.helper false
    end
  end
end
