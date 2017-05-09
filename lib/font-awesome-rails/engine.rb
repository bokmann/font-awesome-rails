module FontAwesome
  module Rails
    class Engine < ::Rails::Engine
      initializer 'font_awesome.rails.action_controller' do |app|
        ActiveSupport.on_load :action_controller do
          helper FontAwesome::Rails::LinkHelper
        end
      end
    end
  end
end
