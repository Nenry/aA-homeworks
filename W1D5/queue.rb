class Queue
  def initialize
    @queue = []
  end

  def enqueue(el) #add
    @queue << (el)
    el
  end

  def dequeue #remove
   queue.shift
  end

  def show
    queue.dup
  end

end
