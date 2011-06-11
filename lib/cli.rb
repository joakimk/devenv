require 'rubygems'
require 'thor'
require File.expand_path(File.join(File.dirname(__FILE__), 'devenv/version.rb'))

module Devenv
  class Cli < Thor
    include Thor::Actions

    desc "version", "Show version"
    def version
      puts "Devenv #{Devenv::VERSION}"
    end
  end
end

