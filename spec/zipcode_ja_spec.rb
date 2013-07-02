# -*- coding: utf-8 -*-
require 'spec_helper'

describe ZipcodeJa do
  it 'converts zipcode to region' do
    region = '9860742'.to_region
    expect(region[:zipcode]        ).to eq('9860742')
    expect(region[:prefecture_yomi]).to eq('ﾐﾔｷﾞｹﾝ')
    expect(region[:city_yomi]      ).to eq('ﾓﾄﾖｼｸﾞﾝﾐﾅﾐｻﾝﾘｸﾁｮｳ')
    expect(region[:town_yomi]      ).to eq('ｼﾂﾞｶﾞﾜﾓﾄﾊﾏﾁｮｳ')
    expect(region[:prefecture]     ).to eq('宮城県')
    expect(region[:city]           ).to eq('本吉郡南三陸町')
    expect(region[:town]           ).to eq('志津川本浜町')
  end

  it 'notfound region from zipcode' do
    expect('9999999'.to_region).to be_nil
  end
end
