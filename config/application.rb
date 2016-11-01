require_relative 'boot'
require 'rails/all'

Bundler.require(*Rails.groups)

module BookingEquipments
  class Application < Rails::Application
    Dir.glob(Rails.root.join('config/locales/**/*/')).each do |dir|
      paths['config/locales'] << dir
    end

    config.generators do |g|
      g.hidden_namespaces << :test_unit << :erb << :mongoid << :less << :sass <<
        :scss << :js << :coffee << :active_record

      g.view_specs      false
      g.helper_specs    false
      g.assets          false
      g.helper          false
    end

    config.time_zone = 'Brasilia'
    config.i18n.default_locale = :'pt-BR'
  end
end
