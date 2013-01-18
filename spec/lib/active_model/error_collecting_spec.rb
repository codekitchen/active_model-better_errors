require 'spec_helper'

describe ActiveModel::ErrorCollecting do
  describe ".set_reporter" do
    subject { ActiveModel::ErrorCollecting.reporters[name.to_s] }
    before { ActiveModel::ErrorCollecting.set_reporter name, reporter }
    after  { ActiveModel::ErrorCollecting.set_reporter name, nil }
    let(:name) { :mock }
    let(:reporter) { mock() }
    it { should be reporter }
  end

  describe ".reporters" do
    subject { ActiveModel::ErrorCollecting.reporters }
    let(:expected) {{
      'message' => ActiveModel::ErrorCollecting::HumanMessageReporter,
      'array'   => ActiveModel::ErrorCollecting::HumanArrayReporter,
      'hash'    => ActiveModel::ErrorCollecting::HumanHashReporter
    }}
    it { should == expected }
  end
end