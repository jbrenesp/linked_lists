class Node
    attr_accessor :value, :next_node
    def initialize (value = nil, next_node = nil)
        @value = value
        @next_node = next_node
    end

end

class LinkedList
    def initialize
        @head = nil
    end
    
    def append(value)
        new_node = Node.new(value)
        if @head.nil?
            @head = new_node
            return
        end
        current = @head
        while current.next_node
            current = current.next_node 
        end
        current.next_node = new_node
    end

    def prepend(value)
        new_node = Node.new(value)
        new_node.next_node = @head
        @head = new_node
    end

    def size 
        count = 0
        current = @head
        while current != nil
            count += 1
            current = current.next_node
        end
        return count
    end

        
end
