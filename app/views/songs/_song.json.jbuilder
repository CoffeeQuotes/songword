json.extract! song, :id, :title, :artist, :album, :description, :lyrics, :englyrics, :created_at, :updated_at
json.url song_url(song, format: :json)
