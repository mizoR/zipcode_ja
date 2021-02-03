# 並び替えたいファイルたちを ./files に持ってくる
downloaded_csv_path = './files/KEN_ALL.CSV'
require 'csv'
CSV.foreach(downloaded_csv_path, encoding: 'Shift_JIS:UTF-8') do |row|
  zipcode = row[2].slice(0..2)
  CSV.open("#{zipcode}xxxx.csv", 'a') { |csv| csv << row }
end