require 'sb_admin_2_rails/version'
require 'sb_admin_2_rails/engine'
require 'bootstrap'
require 'font-awesome-sass'

module SbAdmin2Rails
  class << self
    def load!
      register_rails_engine if rails?
      register_sprockets if sprockets?
    end

    def gem_path
      @gem_path ||= File.expand_path '..', File.dirname(__FILE__)
    end

    def stylesheets_path
      File.join assets_path, 'stylesheets'
    end

    def javascripts_path
      File.join assets_path, 'javascripts'
    end

    def assets_path
      @assets_path ||= File.join gem_path, 'assets'
    end

    # Environment detection helpers
    def rails?
      defined?(::Rails)
    end

    def sprockets?
      defined?(::Sprockets)
    end

    private

    def register_rails_engine
      require 'sb_admin_2_rails/engine'
    end

    def register_sprockets
      Sprockets.append_path(stylesheets_path)
      Sprockets.append_path(javascripts_path)
    end
  end
end

SbAdmin2Rails.load!