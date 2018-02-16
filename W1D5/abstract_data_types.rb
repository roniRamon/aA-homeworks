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
