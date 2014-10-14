require 'spec_helper'

describe Student do

  describe '.filterrific_find' do

    it 'responds to .filterrific_find' do
      Student.must_respond_to(:filterrific_find)
    end

  end

end
