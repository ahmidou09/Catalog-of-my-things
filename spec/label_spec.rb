require_relative '../classes/item/item'
require_relative '../classes/label/label'

describe Label do
  let(:title) { 'Test Label' }
  let(:color) { 'Red' }
  let(:label) { Label.new(title, color) }

  it 'should have a title' do
    expect(label.title).to eq(title)
  end

  it 'should have a color' do
    expect(label.color).to eq(color)
  end

  it 'should have an empty list of items initially' do
    expect(label.items).to be_empty
  end

  it 'should be able to add an item' do
    item = Item.new('2022-10-26')
    label.add_item(item)
    expect(label.items).to include(item)
    expect(item.label).to eq(label)
  end
end
