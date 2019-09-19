require 'sb_admin_2_rails/version'
require 'sb_admin_2_rails/engine'
require 'bootstrap'
require 'font-awesome-sass'
require 'jquery-rails'
require 'sass-rails'

module SbAdmin2Rails
  class << self
    def load!
      register_rails_engine if rails?
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

    private

    def register_rails_engine
      require 'sb_admin_2_rails/engine'
    end
  end
end

SbAdmin2Rails.load!