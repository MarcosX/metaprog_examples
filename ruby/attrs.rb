class Attrs
  attr_accessor :accessor
  attr_reader :reader
  attr_writer :writer
  attr :attr

  def initialize
    @accessor = "read_write"
    @reader = "read_only"
    @writer = "write_only"
  end
end

attributes = Attrs.new

# accessor can read and write
puts attributes.accessor
attributes.accessor = "accessor"
puts attributes.accessor

#reader can't write
# attributes.reader = "can't read"
puts attributes.reader

#writer can't read
# puts attributes.writer
attributes.writer = "write"
