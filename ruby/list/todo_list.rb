class TodoList
    def initialize(list)
        @list = list
    end

    def get_items
        get_list = @list
    end

    def add_item(item)
        @list<<item
    end

    def delete_item(item)
        @list.delete(item)
        @list
    end

    def get_item(index)
        @list[index]
    end




end