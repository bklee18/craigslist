states_array = %w( Alabama Alaska Arizona Arkansas California Colorado Connecticut Delaware Florida Georgia Hawaii Idaho Illinois Indiana Iowa Kansas Kentucky Louisiana Maine Maryland Massachusetts Michigan Minnesota Mississippi Missouri Montana Nebraska Nevada New Hampshire New Jersey New Mexico New York North Carolina North Dakota Ohio Oklahoma Oregon Pennsylvania Rhode Island South Carolina South Dakota Tennessee Texas Utah Vermont Virginia Washington West Virginia Wisconsin Wyoming)
locations = []
states_array.each do |state|
  5.times do
    city = Faker::Name.last_name
    locations << Location.create(state: state, city: city)
  end
end

categories = %w( community personals housing jobs discussions for_sale services gigs brian brandon )

locations.each do |location|
  categories.each do |category|
    location.categories << Category.create(name: category)
  end
end

locations.each do |location|
  location.categories.each do |category|
    category.subcategories << Subcategory.create(name: Faker::Company.name)
  end
end
