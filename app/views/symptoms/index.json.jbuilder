json.array!(@symptoms) do |symptom|
  json.extract! symptom, :id, :title
  json.url symptom_url(symptom, format: :json)
end
