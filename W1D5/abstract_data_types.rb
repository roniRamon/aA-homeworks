class Stack
    def initialize
      @ivar = []# create ivar to store stack here!
    end

    def add(el)
      @ivar.push(el)# adds an element to the stack
    end

    def remove
      @ivar.pop # removes one element from the stack
    end

    def show
      @ivar.dup# return a copy of the stack
    end
  end

class Queue

  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.unshift(el)
  end

  def dequeue
    @queue.pop
  end

  def show
    @queue.dup
  end
end

class Map

  def initialize
    @map = []
  end

  def assign(key, value)
    pair_index = @map.index { |pair| pair[0] == key }
    pair_index ? @map[pair_index][1] = value : @map.push([key, value])
    [key, value]
  end

  def lookup(key)
    @map.each { |pair| return pair[1] if pair[0] == key }
  end

  def remove(key)
    @map.reject! { |pair| pair[0] == key }
  end

  def show
    deep_dup(@map)
  end

  private
  def deep_dup(arr)
    arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
  end
end
