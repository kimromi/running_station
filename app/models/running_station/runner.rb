module RunningStation
  class Runner
    include ActiveModel::Model

    attr_accessor :name

    def script_name
      "#{name}.rb"
    end

    def full_path
      Rails.root + "app/runners/#{script_name}"
    end

    def code
      File.read(Rails.root + "app/runners/#{script_name}")
    end
  end
end
