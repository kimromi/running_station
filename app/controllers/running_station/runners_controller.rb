# frozen_string_literal: true

require "open3"

module RunningStation
  class RunnersController < ApplicationController
    before_action :redirect_to_station_if_excluded_runners

    def show
      @runner = Runner.new(runner_params)
    end

    def update
      @runner = Runner.new(runner_params)

      @stdout, @stderr, @status = Open3.capture3(*["bin/rails", "runner", "#{@runner.full_path}"])
      render :show
    end

    private

      def runner_params
        params.permit(:name)
      end

      def redirect_to_station_if_excluded_runners
        if @runners.exclude?(runner_params[:name])
          redirect_to running_station.root_path
        end
      end
  end
end
