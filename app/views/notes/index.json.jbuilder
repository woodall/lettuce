json.array!(@notes) do |note|
  json.extract! note, :id, :body, :archive, :user_id, :family_id
  json.url note_url(note, format: :json)
end
