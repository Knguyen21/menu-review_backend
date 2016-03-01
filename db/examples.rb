# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end

restaurants = Restaurant.create([{ name: 'Veggie Galaxy', address: "450 Massachusetts Ave, Cambridge, MA 02139"}, {name: "Miel Brasserie Provencale", address: "510 Atlantic Ave. Boston, MA 02210"}, {name: "Rowes Wharf Sea Grille ", address: "Boston Harbor Hotel, 70 Rowes Wharf, Boston, MA 02110"}])
