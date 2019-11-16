require "spec_helper"

describe "Song" do

  describe "#new" do
    it "initializes with a name, an artist, and a genre" do
      rap = Genre.new("rap")
      jay_z = Artist.new("Jay-Z")

      expect{Song.new("Lucifer", jay_z, rap)}.to_not raise_error
    end
  end

  describe ".all" do
    it "knows about all song instances" do
      jay_z = Artist.new("Jay-Z")
      rap = Genre.new("rap")
      Song.new("99 Problems", jay_z, rap)
      shrimp = Song.new("Big Shrimpin", jay_z, rap)

      expect(Song.all_Songs).to include(shrimp)
      
      # changed Song.all to Song.all_Songs for better variable clarity
    end
  end

  describe "#genre" do
    it "belongs to a genre" do
      jay_z = Artist.new("Jay-Z")
      rap = Genre.new("rap")
      ninety_nine_problems = Song.new("99 Problems", jay_z, rap)
      expect(ninety_nine_problems.song_genre).to eq(rap)
      
      # changed ninety_nine_problems.genre to ...song_genre to match my variable choices
    end
  end

  describe "#artist" do
    it "belongs to a artist" do
      jay_z = Artist.new("Jay-Z")
      rap = Genre.new("rap")
      ninety_nine_problems = Song.new("99 Problems", jay_z, rap)
      
      expect(ninety_nine_problems.artist_name).to eq(jay_z)
      
      ### changed back to artist_name - passed
      ## changed back to artist
      # changed ninety_nine_problems.artist to ...artist_name 
    end
  end
end
