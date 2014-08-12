json.array!(@ergo_sessions) do |ergo_session|
  json.extract! ergo_session, :id, :description, :split, :time, :rate, :distance, :hr, :notes
  json.url ergo_session_url(ergo_session, format: :json)
end
