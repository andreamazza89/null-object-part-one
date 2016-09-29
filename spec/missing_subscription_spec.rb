require 'spec_helper'

describe MissingSubscription do

  let(:missing_subscription) { subject }

  it '#charge does not charge the card'do
    mock_card = double('mock_card', charge: nil)
    missing_subscription.charge(mock_card)
    expect(mock_card).to_not have_received(:charge)
  end

  it '#has_mentoring? returns false'do
    expect(missing_subscription.has_mentoring?).to be_false
  end

  it '#price returns 0'do
    expect(missing_subscription.price).to eq(0)
  end

end
