puts "🌱 Seeding spices..."

# Seed your database here
Venue.create(name: "The Musical Hop", city: "San Francisco" , state: "Nairobi" , address: "1015 Folsom Street", phone: "073-123-1234", genres: ["Jazz", "Reggae", "Swing", "Classical", "Folk"], facebook_link: "https://www.facebook.com/TheMusicalHop" , image_link: "https://images.unsplash.com/photo-1543900694-133f37abaaa5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60" , website_link: "https://www.themusicalhop.com" , looking_for_venues: "True", seeking_description: "We are on the lookout for a local artist to play every two weeks. Please call us.")
Artist.create(name: "Guns N Petals", city: "San Francisco" , state: "Nairobi" , phone: "076-123-5000", genres: ["Rock n Roll"], facebook_link: "https://www.facebook.com/GunsNPetals" , image_link: "https://images.unsplash.com/photo-1549213783-8284d0336c4f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=300&q=80" , website_link: "https://www.gunsnpetalsband.com", looking_for_venues: TRUE , seeking_description: "Looking for shows to perform at in the San Francisco Bay Area!" )
Show.create(artist_id: 1 , venue_id: 1 , start_time: "09/15/2022, 12:27 AM" )

puts "✅ Done seeding!"
