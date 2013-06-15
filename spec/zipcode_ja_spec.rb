# -*- coding: utf-8 -*-
require 'spec_helper'

describe ZipcodeJa do
  it 'converts zipcode to region' do
    expect('9860742'.to_region).to eq([
      "04606",
      "98607",
      "9860742",
      "ミヤギケン",
      "モトヨシグンミナミサンリクチョウ",
      "シヅガワモトハマチョウ",
      "宮城県",
      "本吉郡南三陸町",
      "志津川本浜町",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0"
    ])
  end

  it 'notfound region from zipcode' do
    expect('9999999'.to_region).to eq(nil)
  end

  it do
    ZipcodeJa.instance_eval { @_cache_length = 5 }
    expect {
      10.times do |i|
        ("%0d" % i + '00000').to_region
      end
      10.times do |i|
        ("%0d" % i + '00001').to_region
      end
    }.to_not raise_error
  end
end
