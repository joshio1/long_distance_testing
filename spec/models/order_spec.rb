# frozen_string_literal: true

require 'rails_helper'

describe Order do
  let!(:order1) { create :order }
  let!(:order2) { create :order, start_time: 1.day.from_now }

  it 'groups the date and a single shift as an array of shifts' do
    result = described_class.start_dates
    expect(result.first).to eql Date.current
  end

end

