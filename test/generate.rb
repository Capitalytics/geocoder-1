#!/usr/bin/ruby

require 'geocoder/us/database'
require 'csv'

db = Geocoder::US::Database.new(ARGV[0])

if ARGV.length == 2
  result = db.geocode(ARGV[1], 0, 50)
  p result
else
  headers_written = false
  CSV.open(ARGV[2], "w", {:headers => true, :write_headers => true}) do |output|
    CSV.foreach(ARGV[1], {:headers => true}) do |row|
      unless headers_written
        output << row.headers
        headers_written = true
      end
      result = db.geocode(row[0])
      count  = result.map{|a|[a[:lat], a[:lon]]}.to_set.length
      if !result.empty?
        row.headers[1..-3].each_with_index {|f,i|
          if result[0][f.to_sym] != row[i+1]
            print "#{row[0]} !#{f} -> #{result[0][f]} != #{row[i+1]}\n"
          end
        }
        result[0][:count] = count
        result[0][:address] = row[0]
        result[0][:comment] = row[-1]
        columns = row.headers.map{|col|col.to_sym}
        output << result[0].values_at(*columns)
      else
        print "!!! #{row[0]}\n"
      end
    end
  end
end
