class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/artists' do
    artist = Artist.all 
    artist.to_json
  end

  get '/artist/:id' do
  artist = Artist.find(params[:id])
  artist.to_json
  end

  # get '/artists/:id' do
  #   artist = Artist.find(params[:id])

  #   # include associated reviews in the JSON response
  #   artist.to_json(include: :shows)
  # end
# #include the venues associated the shows
#   get '/artist/:id' do
#     artist =Artist.find(params[:id])
#     artist.to_json(include: {shows: {include: :venues}})
#   end

#   get '/games/:id' do
#     game = Game.find(params[:id])

#     # include associated reviews in the JSON response
#     game.to_json(only: [:id, :title, :genre, :price], include: {
#       reviews: { only: [:comment, :score], include: {
#         user: { only: [:name] }
#       } }
#     })
#   end

   post '/artists' do
    artist = Artist.create(
      name: params[:name],
      city: params[:city],
      state: params[:state],
       phone: params[:phone],
       genres: params[:genres],
       facebook_link: params[:facebook_link],
      image_link: params[:image_link],
      website_link: params[:website_link],
      looking_for_venues: params[:looking_for_venues],
      seeking_description: params[:seeking_description]
    )
    artist.to_json
    
   end

  patch '/artists/:id' do
    artist = Artist.find(params[:id])
    artist.update(
      name: params[:name],
      city: params[:city],
      state: params[:state],
      phone: params[:phone],
      genres: params[:genres],
      facebook_link: params[:facebook_link],
      image_link: params[:image_link],
      website_link: params[:website_link],
      looking_for_venues: params[:looking_for_venues],
      seeking_description: params[:seeking_description]
    )
    artist.to_json
  end
   delete '/artists/:id' do 
    artist = Artist.find(params[:id])
     artist.destroy
     artist.to_json
   end


get '/venues' do
  venue = Venue.all 
  venue.to_json
end

get '/venues/:id' do
venue = Venue.find(params[:id])
venue.to_json
end

post '/venues' do
  venue = Venue.create(
    name: params[:name],
    city: params[:city],
    state: params[:state],
    address: params[:address]
     phone: params[:phone],
     genres: params[:genres],
     facebook_link: params[:facebook_link],
    image_link: params[:image_link],
    website_link: params[:website_link],
    looking_for_venues: params[:looking_for_venues],
    seeking_description: params[:seeking_description]
  )
  venue.to_json
  
 end

patch '/venues/:id' do
  venue = Venue.find(params[:id])
  venue.update(
    name: params[:name],
    city: params[:city],
    state: params[:state],
    address: params[:address]
    phone: params[:phone],
    genres: params[:genres],
    facebook_link: params[:facebook_link],
    image_link: params[:image_link],
    website_link: params[:website_link],
    looking_for_venues: params[:looking_for_venues],
    seeking_description: params[:seeking_description]
  )
  venue.to_json
end
delete '/venues/:id' do 
  venues = Venue.find(params[:id])
   venues.destroy
   venues.to_json
 end

get '/shows' do
  show = show.all 
  show.to_json
end

get '/shows/:id' do
show = Show.find(params[:id])
show.to_json
end

post '/shows' do
  show = Show.create(
   artist_id: params[:artist_id],
   venue_id: params[:venue_id],
   start_time: params[:start_time]
  )


show.to_json
end

patch '/shows/:id' do
show = Show.find(params[:id])
show.update(
  artist_id: params[:artist_id],
   venue_id: params[:venue_id],
   start_time: params[:start_time]
)
end

delete '/shows/:id' do 
  show = Show.find(params[:id])
   show.destroy
   show.to_json
 end

end
