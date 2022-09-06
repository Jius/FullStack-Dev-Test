json.(intervention, :id, :address, :zipcode, :city, :total_panels, :type_panel, :ref_panel, :started_at, :created_at, :updated_at)
json.customer do
  json.name intervention.customer.name
  json.email intervention.customer.email
  json.phone intervention.customer.phone
end
json.company do
  json.name intervention.company.name
  json.email intervention.company.siren
end