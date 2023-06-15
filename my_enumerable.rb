module MyEnumerable
    def all?(&block)
      each { |element| return false unless yield(element) }
      true
    end
  
    def any?(&block)
      each { |element| return true if yield(element) }
      false
    end
  
    def filter(&block)
      result = []
      each { |element| result << element if yield(element) }
      result
    end
  end
  