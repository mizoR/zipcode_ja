require "zipcode_ja/version"
require "zipcode_ja/string"
require "csv"

module ZipcodeJa
  @_zipcodes = {}
  @_cache_length = 20
  
  class << self
    def find(zipcode)
      zipcode =~ /^[0-9]{7}$/ or return

      cc = zipcode[0, 2].to_sym
      if !@_zipcodes[cc]
        zip_path = File.join(File.dirname(__FILE__), "../data/zipcode-#{cc}xxxxx.csv")
        FileTest.file?(zip_path) or return

        @_zipcodes[cc] = {}
        CSV.foreach(File.open(zip_path)) do |row|
          @_zipcodes[cc][row[2]] = row
        end

        clear_cache if @_zipcodes.length > @_cache_length
      end

      @_zipcodes[cc][zipcode]
    end

    private

    def clear_cache
      cc = @_zipcodes.first[0]
      @_zipcodes[cc].clear
      @_zipcodes.delete(cc)
    end
  end
end
