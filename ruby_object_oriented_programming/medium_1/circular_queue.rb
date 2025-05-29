=begin
  Breakdown
    - Elements are added one by one to the queue.
    - If the queue is full the oldest element is deleted
      and the new element is added in its place.
    - If an element is deleted from the, it is the last
      element that gets removed.
  Problem
    - Add two instance methods
      - #enqueue > Adds a new element, if queue is full,
        replace the oldest element.
      - #dequeue > Removes and returns the oldest element
=end

class CircularQueue
  def initialize(size)
    @buffer = Array.new(size)
    @next_index = 0
    @oldest_index = 0
  end

  def enqueue(value)
    if @buffer[@next_index] != nil
      @oldest_index = (@oldest_index + 1) % @buffer.size
    end

    @buffer[@next_index] = value
    @next_index = (@next_index + 1) % @buffer.size
  end

  def dequeue
    value = @buffer[@oldest_index]
    @buffer[@oldest_index] = nil
    @oldest_index = (@oldest_index + 1) % @buffer.size unless value.nil?
    value
  end
end

# Alternate by Matin

class CircularQueue
  def initialize(buffer_size)
    @array = []
    @buffer_size = buffer_size
  end

  def enqueue(value)
    @array.shift if @array.length == @buffer_size
    @array.push(value)
  end

  def dequeue
    @array.shift
  end
end

queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil
