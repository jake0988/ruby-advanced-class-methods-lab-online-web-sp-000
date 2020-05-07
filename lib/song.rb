class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create
    @song = self.new
    @song.save
    @song
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = self.new
    song.name = name
    @@all << song
    song
  end

  def self.find_by_name(search)
    @@all.each do |name|
      if search.name == name
        name
      end
    end
    false
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

end
