json.array!(@evidences) do |evidence|
  json.extract! evidence, :id, :name, :project_id
  json.url evidence_url(evidence, format: :json)
end
