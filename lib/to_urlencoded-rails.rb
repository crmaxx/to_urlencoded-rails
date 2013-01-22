require 'uri'

class Array

  def to_urlencoded(options = {}, &block)

    return '' if self.empty?

    columns = []
    options.reverse_merge!(:header => true)

    if options[:only]
      columns = Array(options[:only]).map(&:to_sym)
    elsif !self.empty?
      columns = self.first.class.column_names.map(&:to_sym) - Array(options[:except]).map(&:to_sym)
    end

    return '' if columns.empty?

    self.each_with_index do |obj, index|
      if block
        columns.map { |column| block.call(column, obj.send(column), index) }
      else
        columns.map { |column| obj.send(column) }
      end
    end


  end

end
