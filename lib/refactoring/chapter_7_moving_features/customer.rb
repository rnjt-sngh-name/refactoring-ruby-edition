module Refactoring
  module Chapter7MovingFeatures
    class Customer
      attr_reader :name

      def initialize(name)
        @name = name
      end
    end
  end
end