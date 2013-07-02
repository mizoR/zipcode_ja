require "zipcode_ja/version"
require "zipcode_ja/string"
require "csv"

module ZipcodeJa
  @here = File.dirname(__FILE__)

  class << self
    def find(zipcode)
      zipcode =~ /^[0-9]{7}$/ or return

      ccc = zipcode[0, 3]
      zip_path = File.join(@here, "../data/zipcode/#{ccc}xxxx.csv")
      FileTest.file?(zip_path) or return

      CSV.foreach(File.open(zip_path)) do |row|
        if zipcode == row[2]
          return {
            :zipcode         => row[2],
            :prefecture_yomi => row[3],
            :city_yomi       => row[4],
            :town_yomi       => row[5],
            :prefecture      => row[6],
            :city            => row[7],
            :town            => row[8],
          }
        end
      end
    end
  end
end
