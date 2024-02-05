class Element
  attr_reader :datum, :next_element

  def initialize(value, next_value=nil)
    @datum = value
    @next_element = next_value
  end

  def tail?
    next_element.nil?
  end

  alias :next :next_element
end

class SimpleLinkedList
  attr_reader :head

  def size
    count = 0
    current_element = @head
    until current_element.nil?
      count += 1
      current_element = current_element.next
    end

    count
  end

  def empty?
    head.nil?
  end

  def peek
    head.datum if head
  end

  def push(value)
    element = Element.new(value, @head)
    @head = element
  end

  def pop
    datum = peek
    @head = @head.next
    datum
  end

  def self.from_a(array)
    array = array.nil? ? [] : array.reverse
    new_list = SimpleLinkedList.new
    array.each_with_object(new_list) do |element, list|
      list.push(element)
    end
  end

  def to_a
    array = []
    current_element = head
    until current_element.nil?
      array << current_element.datum
      current_element = current_element.next
    end

    array
  end

  def reverse
    reverse_list = SimpleLinkedList.new
    current_element = head
    until current_element.nil?
      reverse_list.push(current_element.datum)
      current_element = current_element.next
    end

    reverse_list
  end
end
