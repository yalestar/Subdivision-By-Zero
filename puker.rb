filename = 'subdivisions.csv'
file = File.new(filename, 'r')

file.each_line("\n") do |row|
  cols = row.split(";")
  puts "#{cols[0]} #{cols[1]} #{cols[2]} #{cols[3]}"

  Subdivision.create(
    :first_part => cols[0].gsub('""', ''),
    :second_part => cols[1].gsub('""', ''),
    :third_part => cols[2].gsub('""', ''),
    :image_path => cols[3].gsub('""', '')
  )
end