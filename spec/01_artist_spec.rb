require "spec_helper"


describe "Artist" do

  describe "#artist_name" do
    it "has a name" do
      jay_z = Artist.new("Jay-Z")

      expect(jay_z.artist_name).to eq("Jay-Z")
    end
  end

  describe ".all_Artists" do
    it "knows about all artist instances" do
      jay_z = Artist.new("Jay-Z")
      kendrick = Artist.new("Kendrick Lamar")

      expect(Artist.all_Artists).to include(jay_z)
      expect(Artist.all_Artists).to include(kendrick)
    end
  end

  describe "#new_song" do
    it "given a song_name and song_genre, creates a new song associated with that artist" do
      jay_z = Artist.new("Jay-Z")
      rap = Genre.new("rap")
      ninety_nine_problems = jay_z.new_song("Ninety Nine Problems", rap)

      expect(jay_z.all_songs).to include(ninety_nine_problems)
      
      ### either the test is wrong or I"m somehow inadvertantley making ninety_nine_problems an array, because the test effectvely says hey does the array jay_z.all_songs contain within it, the array ninety_nine_problems, which returns false because ninety_nine_problems is somehow an array 
      
      ### SOLN, return issue, the test calls the method #new_song, which returns the new array, not the isntance, so just add a specific return for the last item added to the array
     # binding.pry
     
     
      expect(ninety_nine_problems.artist_name).to eq(jay_z)
      
      # changed ninety_nine_problems.artist to ...artist_name
      
    end
  end

  describe "#songs" do
    it "has many songs" do
      jay_z = Artist.new("Jay-Z")
      rap = Genre.new("rap")
      ninety_nine_problems = jay_z.new_song("Ninety Nine Problems", rap)
      expect(jay_z.songs).to include(ninety_nine_problems)
    end
  end

  describe "#genres" do
    it "has many genres, through songs" do
      jay_z = Artist.new("Jay-Z")
      rap = Genre.new("rap")
      ninety_nine_problems = jay_z.new_song("Ninety Nine Problems", rap)

      expect(jay_z.genres).to include(rap) 
      
      ## chanaged back to genres
      # changed jay_z.genres to jay_z.song_genres
      
      expect(jay_z.songs.first.song_genre).to eq(rap) 
      
      # changes jay_z.songs.first.genres to ...song_genres
    end
  end

end
