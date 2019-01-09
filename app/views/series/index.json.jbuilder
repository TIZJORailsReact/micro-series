json.series do
  json.array! @series, partial: 'series', as: :series
end
json.recommended do
  json.array! @recommended, partial: 'series', as: :series
end
