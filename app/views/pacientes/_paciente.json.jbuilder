json.extract! paciente, :id, :nome, :morada, :telefone, :nif, :cc, :pem, :obs, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
