class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create
    song = self.new
    song.save
    @song
  end

  def self.new_by_name(name)
    @song = self.name
  end

  def self.create_by_name(name)
    new_by_name(name)
    save(name)
  end

  def self.find_by_name(search)
    @@all.each do |name|
      if search == name
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
