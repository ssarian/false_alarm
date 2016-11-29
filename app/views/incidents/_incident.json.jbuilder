json.extract! incident, :id, :incidentNum, :incidentDateTime, :permitNum, :address, :city, :state, :zip, :created_at, :updated_at
json.url incident_url(incident, format: :json)