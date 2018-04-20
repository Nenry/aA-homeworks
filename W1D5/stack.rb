class Stack
  def initialize
    @stack = []
  end

  def add(el)
    @stack << el # adds an element to the stack
  end

  def remove
    @stack.pop# removes one element from the stack
  end

  def show
    @stack.dup # return a copy of the stack
  end
end
