require 'rails_helper'

describe Contribution do
  it { should validate_presence_of :text }
  it { should validate_uniqueness_of :text }
  it { should belong_to :tale }
  it { should belong_to :account }
end
