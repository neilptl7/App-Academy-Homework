#Exercise 1

class Stack

  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
    el
  end

  def remove
    @stack.pop
  end

  def show
    @stack.dup
  end

end

#Exercise 2

class Queue

  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue << el
    el
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue.dup
  end

end

#Exercise 3

class Map

  def initialize
    @map = []
  end

  def assign(key, val)

  end

  def lookup(key)

  end

  def remove(key)

  end

  def show
    
  end

end
