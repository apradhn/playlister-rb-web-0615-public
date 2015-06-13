describe "Song" do
  it "can initialize a song" do
     expect(Song.new).to be_an_instance_of(Song)
  end

  it "can have a name" do
     # implement this spec
     song = Song.new
     song.name = "Blank Space"
     expect(song.name).to eq("Blank Space")
  end

  it "can have a genre" do
     genre = Genre.new.tap {|g| g.name = "Pop"}
     song = Song.new.tap{|s| s.genre = genre}
     expect(song.genre).to eq(genre)
  end

  it "has an artist" do
     artist = Artist.new.tap {|a| a.name = "Taylor Swift"}
     song = Song.new.tap {|s| s.artist = artist}
     expect(song.artist).to eq(artist)
  end
end
