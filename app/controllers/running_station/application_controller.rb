# frozen_string_literal: true

module RunningStation
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :search_runners

    private

    def search_runners
      @runners = Dir.glob(Rails.root + 'app/runners/*.rb').map do |file|
        File.basename(file).gsub(/\.rb$/, '')
      end
    end
  end
end
