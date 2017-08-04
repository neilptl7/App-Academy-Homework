class Stack

  def intialize
    @stack = []
  end

  def add(el)
    self << el
  end

  def remove
    self.pop
  end

  def show
    self.dup
  end

end
