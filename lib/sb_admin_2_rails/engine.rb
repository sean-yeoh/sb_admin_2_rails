module SbAdmin2Rails
  class Engine < ::Rails::Engine
    initializer :assets do |config|
      Rails.application.config.assets.precompile += %w{ sb_admin_2_rails.css }
      Rails.application.config.assets.precompile += %w{ sb_admin_2_rails.scss }
      Rails.application.config.assets.precompile += %w{ sb_admin_2_rails.js }
      Rails.application.config.assets.precompile += %w{ *.js }
    end

    initializer 'sb_admin_2_rails.assets' do |app|
      %w(stylesheets javascripts).each do |sub|
        app.config.assets.paths << root.join('assets', sub).to_s
      end
    end
  end
end