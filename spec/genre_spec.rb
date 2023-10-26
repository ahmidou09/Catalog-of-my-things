require_relative '../classes/genre/genre'
require_relative '../classes/item/item'


describe Genre do
  let(:genre_name) { 'Action' }
  let(:genre) { Genre.new(genre_name) }

  it 'should have a name' do
    expect(genre.name).to eq(genre_name)
  end

  it 'should have an empty list of items initially' do
    expect(genre.items).to be_empty
  end

  it 'should be able to add an item' do
    item = Item.new('2022-10-26')
    genre.send(:add_item, item)
    expect(genre.items).to include(item)
    expect(item.genre).to eq(genre)
  end
end
