require 'sassc-rails'

module SbAdmin2Rails
  class Engine < ::Rails::Engine
    initializer 'sb_admin_2_rails.assets.precompile' do |app|
      %w(stylesheets javascripts).each do |sub|
        app.config.assets.paths << root.join('assets', sub).to_s
      end
    end
  end
end