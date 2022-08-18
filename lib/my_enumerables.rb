# [1, 1, 2, 3, 5, 8, 13, 21, 34]

module Enumerable
  def my_each_with_index
    i = 0
    self.length.times do
      yield self[i], i
      i += 1
    end

    return self
  end

  def my_select
    i = 0
    filtered_array = []
    self.length.times do
      filtered_array << self[i] if yield self[i]
      i += 1
    end

    return filtered_array
  end

  def my_all?
    i = 0
    self.length.times do
      return false unless yield self[i]
      i += 1
    end

    return true
  end

  def my_any?
    i = 0
    self.length.times do
      return true if yield self[i]
      i += 1
    end

    return false
  end
  
  def my_none?
    i = 0
    self.length.times do
      return false if yield self[i]
      i += 1
    end

    return true
  end

  def my_count
    if block_given?
      i = 0
      count = 0
      self.length.times do
        count += 1 if yield self[i]
        i += 1
      end
      return count
    end

    return self.length
  end

  def my_map
    i = 0
    mapped_array = []
    self.length.times do
      mapped_array << (yield self[i])
      i += 1
    end
    
    return mapped_array
  end

  def my_inject(initial_value=0)
    i = 0
    self.length.times do
      initial_value = yield initial_value, self[i]
      i += 1
    end

    return initial_value
  end

end

class Array
  def my_each
    i = 0
    self.length.times do
      yield self[i]
      i += 1
    end

    return self
  end
end

