require 'pry'  ### loads pry library/gem? so that binding.pry can be used

class Artist  ### instantiates a class named Artist 
  attr_accessor :artist_name, :song_name, :song_genre, :all_songs
  
  ### attr_accessor allows read AND write access to the names instances variables, in this case, artist_name, song_name , song_genre, all_songs.
  
  @@all_Artists = []
  
  ### @@all_Artists initiates an empty array global variable to store all artist instances
  
  def self.all_Artists
    @@all_Artists
  end
  
  ### self.all_Artists is a class method, is accessible from outside the class by calling Artist.all_Artists, and returns the global variable array for all artist_instances
  
  def initialize(artist_name)
    @artist_name = artist_name
    @all_songs = []
    @@all_Artists << self
  end
  
  ### The initialize method is called using Artist.new and needs to include an artist_name argument.  The initialization sets the artist_name argument to the instance method/variable @artist_name, which is then available within the Arists class.  @all_songs instance method/variable is set to an empty array, which gives the Artist instance a place to store instances of the artist's songs.  The artist instance, self is appended to to the global variable array @@all_Artists
  
  def new_song(song_name, song_genre)
      self.all_songs << Song.new(song_name, artist_name, song_genre)
      self.all_songs.last.artist_name = self
      self.all_songs.last 
  end
  
  ### The instance method #new_song take two arguments, the song_name and song_genre and creates a new instance of a song with the arguments inhereited from the Song class of song_name, artist_name, song_genre.  The Song.new initialize method gets the artist_name variable from the instance variable set when an artist instance was initialized (Artist line 19)(???, not confirmedand doesn't make sense because I didn't declare it an instance variable).  The song spec tests wanted three arguments for initializing Song, which predicatably broke this method because Song.new (Artist, line 27) was originally written with two arguments song_name and song_genre.  I thought adding artist_name to line 27 would break the method because artist_name is not declared within in the method, but it worked, I haven't gone back to test where it's getting artist_name from (NOTE the artist_name is coming from the test on song_spec line 10).  Line 28 appends the entirety of the instance within the artist_name attribute.  Line 29 returns the new song instance otherwise the all_song array is returned causing a failed test.  See comments in artist_spec line 32.
  
  def songs
    self.all_songs.each do |each_song|
    end
  end 
  
  ### takes the object passed with the method, for example, artist_spec line 50, jay_z.songs and passes the output from #new_song instance method and interates through the all_songs attribute returning each_song eg. Ninety Nine Problems) which passed to the include? method returns true passing artist_spec line 50
  
  def genres 

    self.all_songs.collect do |each_song|
      each_song.song_genre
    end
  end 
  
  ### #genres instance method takes the output of #new_song instance method and collects a new array of genre instances that include the genre instance held in the variable rap set in arist_spec line 57.  So when the artist instance modified from initailiazation in artist_spec line 57 by the instance method new_song is passed to the genres method it returns an array of song genres that match line 57.  Collect may not be the best way, but the description mentioned "collect"
  
end ### of Artist Class
###~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
class Song  ### instantiates the class named Song
  attr_accessor :song_name, :song_genre, :artist_name
  
  ### attr_accessor method establishes an instance method to access and set the following instance variables: song_name, song_genre, artist_name
  
  @@all_Songs = []
  
  
  ### the global variable @@all_Songs is set to an empty array and populated as new instances of Song are created.  @@all_Songs is accessible outside the class and through the Class method .all_Songs
  
  def initialize(song_name, artist_name, song_genre)
    @song_name = song_name
    @song_genre = song_genre
    @artist_name = artist_name
    @@all_Songs << self
    self.song_genre.all_songs << self

  end
  
  # the instance method initialize is called by Song.new with three arguments song_name, artist_name, song_genre.  song_name argument is set using the attr_accessor method as the instance variable @song_name, the song_genre argument is set using the attr_accessor as the instance variable @song_genre.  The new song instance is appended to the @@all_Songs global variable array.
  
  ##  expect(rap.all_songs).to include(shrimp) added setter/getter to Genre class named all_songs and set on Genre initliaze to an empty array.  when Song is initialized I then added to the all_songs array.
  
  def self.all_Songs 
    @@all_Songs
  end
  
  ### the class method .all_Songs returns the global variable @@all_Songs array and is accesible outside the Song class.
  
end
###~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
class Genre # instantiates the class named Genre 
  attr_accessor :song_genre, :song_name, :all_songs
  
  # the attr_accessor method allows the setting and getting of the named methods/attributes: song_genre, song_name, all_songs
  
  @@all_Genres = []
  
  # all_Genres names an empty array to store all instances of genres
  
  def initialize(song_genre)
    @song_genre = song_genre
    @all_songs = []
    @@all_Genres << self
  end
  
  # initializes a new instance of a genre when Genre.new is called and requires one argument of song_genre.  The initialize instance method also sets the @song_genre instance variable to the passed argument song_genre, initializes the instance varible @all_songs as an empty array, and passed the instance of the genre and attributes to the @@all_Genres array
  
  def self.all_Genres
    @@all_Genres
  end 
  
  # the class method. all_Genres returns the @@all_Genres array which contains all instances of genres and the instances attributes.  The method is accessible outisde the class by calling Genre.all_Genres
    
  def artists
    artist_name = []
    self.all_songs.each do |all_songs|
      artist_name << all_songs.artist_name
    end
    artist_name
  end
  
  # the instance method artists initializes the artist_name variable as empty array and takes self, a genre instance, passed to it from the genre_spec line 47 and 48.  Self then iterates through each instance of a song returning the artist_name and putting into the artist_name array.  The method then returns the artist_name array which is asked in genre_spec line 50 and 51 if it includes? the jay_z and kendrick object + attributes, respectively.  
  
  
  # IDEA use song initialiaze to run the code to send the song.new to genre....RESULT passed genre_spec expect(rap.all_songs).to include(shrimp)

### IDEA use an explicit setter method for "all_songs", when genre_spec line 21 calls rap.all_songs, I can then have some code instead of only set and getting...NOT TRIED
  
end  ## end of Genre class
