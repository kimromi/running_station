# frozen_string_literal: true

module RunningStation
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
  end
end
