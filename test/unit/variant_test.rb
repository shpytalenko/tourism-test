require 'test_helper'

class VariantTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Variant.new.valid?
  end
end
