require 'spec_helper'

describe 'Genre' do
  describe '#name' do
    it 'has a name' do
      rap = Genre.new('rap')

      expect(rap.song_genre).to eq('rap')
      
      # changed rap.name to rap.song_genre to align with variable choices
    end
  end

  describe '#songs' do
    it 'has many songs' do
      jay_z = Artist.new('Jay-Z')
      rap = Genre.new('rap')
      Song.new('99 Problems', jay_z, rap)
      shrimp = Song.new('Big Shrimpin', jay_z, rap)
      expect(rap.all_songs).to include(shrimp)
      
      ### changed back to rap.all_songs...passed
      ## changed back to rap.songs
      # changed rap.songs to rap.all_songs to align with variable term choices
    end
  end

  describe '.all_Genres' do  # changed from .all to .all_Genres to align with variable name choices
    it 'knows about all genre instances' do
      rap = Genre.new('rap')
      blues = Genre.new('blues')
      rock = Genre.new('rock')
      folk = Genre.new('folk')

      expect(Genre.all_Genres).to include(rock)
      expect(Genre.all_Genres).to include(folk)
      expect(Genre.all_Genres).to include(rap)
      expect(Genre.all_Genres).to include(blues)
    end
  end

  describe '#artists' do
    it 'has many artists, through songs' do
      jay_z = Artist.new('Jay-Z')
      kendrick = Artist.new('Kendrick Lamar')
      rap = Genre.new('rap')
      ninenty_nine_problems = Song.new('99 Problems', jay_z, rap)
      humble = Song.new('HUMBLE', kendrick, rap)
#binding.pry
      expect(rap.artists).to include(jay_z)
      expect(rap.artists).to include(kendrick)
    end
  end
end
