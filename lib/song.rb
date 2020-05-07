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
    answer = []
    @@all.each do |name|
      if search == name.name
        answer << name
      end
    end
    answer[0]
  end

  def self.find_or_create_by_name(name)
    if find_by_name(name)
       find_by_name(name)
    else
      create_by_name(name)
    end
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.alphabetical
    @@all.collect each |song|
      song.name
    end
    @@all.sort
    @@all
  end
end
