require "zipcode_ja/version"
require "zipcode_ja/string"
require "csv"

module ZipcodeJa
  @_zipcodes = {}
  
  class << self
    def find(zipcode)
      return nil unless zipcode =~ /^[0-9]{7}$/

      cc = zipcode[0, 2].to_sym
      if !@_zipcodes[cc]
        @_zipcodes[cc] = {}
        zip_path = File.open(File.join(File.dirname(__FILE__), "../data/zipcode-#{cc}xxxxx.csv"))
        CSV.foreach(zip_path) do |row|
          @_zipcodes[cc][row[2]] = row
        end
      end

      @_zipcodes[cc][zipcode]
    end
  end
end
