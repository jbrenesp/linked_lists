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
    
    def pop
        if @head.nil?
            return nil
        end
        if @head.next_node == nil
            removed_node = @head
            @head = nil
            return removed_node
        end

        current = @head
        while current.next_node.next_node != nil
            current = current.next_node
        end

        removed_node = current.next_node
        current.next_node = nil
        return removed_node
    end

    def contains?(value)
        current = @head
        while current != nil
            if current.value == value
                return true
            else
                current = current.next_node
            end
        end
        return false
    end

    def find(value)
        current = @head
        counter = 0

        while current != nil
            if current.value == value
                return counter
            else 
                current = current.next_node
                counter += 1
            end
        end
        return nil
    end

    def to_s
        current = @head
        str = ""
        while current != nil
            str += "( #{current.value} ) ->"
            current = current.next_node
        end
        str += "nil"
        return str
    end
end
