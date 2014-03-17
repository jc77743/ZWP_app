json.array!(@tag_assignments) do |tag_assignment|
  json.extract! tag_assignment, :id, :evidence_id, :tag_id
  json.url tag_assignment_url(tag_assignment, format: :json)
end
