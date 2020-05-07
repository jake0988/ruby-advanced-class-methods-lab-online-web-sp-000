class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create(name)
    song = self.new(name)
    song.save
    song
  end

  def self.new_by_name(name)
    @song = self.name
  end

  def self.create_by_name(name)
    @name = name
    @@all << @name
    self.name
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

end
