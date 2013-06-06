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
    expect('986074'.to_region).to eq(nil)
  end
end
