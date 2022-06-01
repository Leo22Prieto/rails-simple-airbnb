puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating restaurants...'
flats = [
  { name: 'Light & Spacious Garden Flat London',
    address: '10 Clifton Gardens London W9 1DT',
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: 75,
    number_of_guests: 3 },
  { name: 'St Pancras Clock Tower Guest Suite',
    address: 'Euston Rd London N1C 4QP',
    description: 'A mini apartment within the clock tower apartment at St Pancras Station, with its own en suite bathroom and kitchen and sitting area.',
    price_per_night: 110,
    number_of_guests: 2 },
  { name: 'Stylish House Close to River Thames',
    address: '5 Queensmill Road London SW6 6JP',
    description: 'Lovely warm comfortable and stylishly furnished house. Private bedroom and bathroom with shared living areas.',
    price_per_night: 65,
    number_of_guests: 6 },
  { name: 'Luxury stay in Wiltshire',
    address: 'Wiltshire, England, United Kingdom',
    description: 'The River Avon wends by field and forest on its way past this Arts and Crafts estate outside London. A swimming pool lies between the Manor House and four additional residences that make up the accommodations. ',
    price_per_night: 1900,
    number_of_guests: 8 }
]

flats.each do |flat|
  flat = Flat.create!(flat)
  puts "Created #{flat.name}"
end
puts 'Finished!'
