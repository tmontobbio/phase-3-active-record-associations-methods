class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    # Drake doesn't exist in the database as an artist yet, so you'll have to create a record
    # Hint: you won't want to create an artist record every time this method is called, only if Drake is *not found*

    #creating drake instance to use to update the song's id connection
    #READ MORE ABOUT THIS
    drake = Artist.find_or_create_by(name: "Drake")
    # even though there isnt an artist symbol, update finds artist by read/write for artist_id ect.
    self.update(artist: drake)
    #this works too
    #self.update(artist_id: drake.id)
  end
end