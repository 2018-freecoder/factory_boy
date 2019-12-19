class FactoryBoy
  def self.define(name = nil, &block)
  end

  def self.create(name, options = {})
  end

  def self.clean_sequence
  end

  def initialize
  end

  def factory(name, &block)
  end

  def sequence(name, value, &block)
  end

  def generate(seq_name)
  end


  # inner class we store information for register model
  class Model
    def initialize(name, factory)
    end

    def create(options = {})

    end

    def method_missing(name, *params, &block)
    end
  end
end

