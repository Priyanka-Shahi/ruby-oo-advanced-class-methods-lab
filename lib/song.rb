class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
end

def self.create 
  song = Song.new
  song.save
end

def self.create_by_name(name)
  song = Song.new
  song.name = name
  song.save
end

def find_by_name(name)
  @@all.find |song|
  song.name == name
end

