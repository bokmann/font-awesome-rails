module FontAwesome
  module Rails
    class Engine < ::Rails::Engine
      config.to_prepare do
        ApplicationController.helper(FontAwesome::Rails::Helpers::IconHelper)
      end
    end
  end
end
