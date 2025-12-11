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

    def head
        @head
    end

    def tail
        current = @head
        if @head.nil?
            return nil
        end
        while current.next_node != nil 
            current = current.next_node
        end
        return current
    end

    def at(index)
        current = @head
        counter = 0

        while current != nil
            if counter == index
                return current
            end
            current = current.next_node
            counter += 1
        end
        return nil
    end        
end
