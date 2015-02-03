def group_by (array)
  result = {}
  array.each { |e| (result[yield(e)] ||= []) << e }
  result
end

