class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create
    @@all << self.new
  end

  def self.new_by_name(name)
    name = name.name
    self.name
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
    self.class.all << self
  end

end
