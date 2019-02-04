# frozen_string_literal: true

module RunningStation
  class Engine < ::Rails::Engine
    isolate_namespace RunningStation

    # require all dependencies
    Gem.loaded_specs["running_station"].dependencies.each do |d|
      require d.name if d.type == :runtime
    end
  end
end
