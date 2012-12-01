class Attrs
  attr_accessor :accessor
  attr_reader :reader
  attr_writer :writer
  attr :attr
end

def get_accessibility(object, attribute)
  puts "Can read? #{object.respond_to?("#{attribute}".to_sym)}"
  puts "Can write? #{object.respond_to?("#{attribute}=".to_sym)}"
end

attributes = Attrs.new

# accessor can read and write
puts "=== Accessor ==="
get_accessibility(attributes, "accessor")

# reader can't write
puts "=== Reader ==="
get_accessibility(attributes, "reader")

# writer can't read
puts "=== Writter ==="
get_accessibility(attributes, "writer")

# attr can't write
puts "=== Attribute ==="
get_accessibility(attributes, "attr")
