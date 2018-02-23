class LRUCache

  attr_reader :arr, :size

  def initialize(size)
    @arr = Array.new()
    @size = size
  end

  def add(element)
    #befor add element see if exist
    #if yes delete it an move to end
    if @arr.include?(element)
      @arr.delete_at(@arr.index(element))
    end
    #check if arr size  == 4
    keep_size
    @arr << element
  end

  def count
    @arr.length
  end

  def show
    @arr
  end

  private

  def keep_size
    if count == @size
      @arr.shift
    end
  end


end
