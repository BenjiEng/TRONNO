json.extract! @card, :id, :title, :ord, :created_at, :updated_at
json.bid @card.list.board_id
json.items @card.items do |item|
  json.extract! item, :id, :title, :card_id, :done, :created_at, :updated_at
end
