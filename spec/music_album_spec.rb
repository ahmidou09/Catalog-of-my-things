require_relative '../classes/music_album/music_album'
require_relative '../classes/item/item'

describe MusicAlbum do
  let(:on_spotify) { true }
  let(:publish_date) { '2022-10-26' }
  let(:music_album) { MusicAlbum.new(on_spotify, publish_date) }

  it 'should have an on_spotify attribute' do
    expect(music_album.on_spotify).to be(true)
  end

  it 'should inherit attributes from Item' do
    expect(music_album.publish_date).to eq(publish_date)
    expect(music_album.archived).to be(false)
  end

  it 'should be able to be archived if conditions met' do
    allow(music_album).to receive(:can_be_archived?).and_return(true)
    music_album.move_to_archive
    expect(music_album.archived).to be(true)
  end

  it 'should not be able to be archived if conditions not met' do
    allow(music_album).to receive(:can_be_archived?).and_return(false)
    music_album.move_to_archive
    expect(music_album.archived).to be(false)
  end
end
