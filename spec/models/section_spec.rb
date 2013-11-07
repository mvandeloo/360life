require 'spec_helper'

describe Section do
  it {should have_many(:questions)}
  it {should have_many(:suggestions)}
end
