# -*- coding: utf-8 -*-
require 'spec_helper'

describe ZipcodeJa do
  it 'converts zipcode to region' do
    expect('9860742'.to_region).to eq([
      "04606",
      "98607",
      "9860742",
      "ﾐﾔｷﾞｹﾝ",
      "ﾓﾄﾖｼｸﾞﾝﾐﾅﾐｻﾝﾘｸﾁｮｳ",
      "ｼﾂﾞｶﾞﾜﾓﾄﾊﾏﾁｮｳ",
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
end
