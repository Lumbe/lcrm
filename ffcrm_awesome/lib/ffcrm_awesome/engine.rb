module FfcrmAwesome
  class Engine < ::Rails::Engine
    config.to_prepare do
      require 'ffcrm_awesome/controllers'
    end
  end
end
