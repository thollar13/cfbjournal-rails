json.array!(@picks) do |pick|
  json.extract! pick, :id, :acc_champ, :big_ten_champ, :big_twelve_champ, :national_champ, :user_id
  json.url pick_url(pick, format: :json)
end
