Dir[Rails.root.join('db/seeds/*.rb')].sort.each do |f|
  puts "Processing #{f.split('/').last}"
  require f
end
