class Graph
  def initialize
    @possible_ways = {}
    @path = []
    @vertices = {}
    @visited = {}
  end

  def add_vertex(node, edges)
    @vertices[node] = edges
    @visited[node] = false
  end

  def shortest_path(start, finish)
    if validate_nodes start, finish
      @visited[start] = true
      current = start

      @path << start

      while current != finish

        @vertices[current].each do |node, value|
          unless @visited[node]
            @possible_ways[node] = value
          end 
        end

        next_node = get_smallest_vertex

        @path << next_node
        current = next_node
        @visited[current] = true
        @possible_ways = {}
      end

      @path.join(" => ")
    else
      return nil
    end
  end

  private

  def get_smallest_vertex 
    @possible_ways.sort{|a,b| a[1] <=> b[1]}.first[0]
  end

  def validate_nodes (start, finish)
    @vertices.has_key?(start) && @vertices.has_key?(finish)
  end

end
