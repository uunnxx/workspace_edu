n = 3
n.times do
  puts "Hello, Ruby world!"
end

# Here's a method taken from the MetricFu project.

def location(item, value)
  sub_table = get_sub_table(item, value)
  if (sub_table.length == 0)
    raise MetricFu::AnalysisError, "The #{item} '#{value}'" \
      'does not have any rows in the analysis table'
  else
    first_row = sub_table[0]
    case item
    when :class
      MetricFu::Location.get(first_row.file_path, first_row.class_name, nil)
    when :method
      MetricFu::Location.get(first_row.file_path, first_row.class_name,
                             first_row.method_name)
    when :file
      MetricFu::Location.get(first_row.file_path, nil, nil)
    else
      raise ArgumentError, 'Item must be :class, :method, or :file'
    end
  end
end

