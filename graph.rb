class Graph
  def initialize
    @vertices = {}
    @unvisited = []
  end

  def add_vertex(node, edges)
    @vertices[node] = edges
  end

  def shortest_path(start, finish)
    if validate_nodes
      path = []
      current = start
      path << start

      while current != finish
        next_node = @vertices[current].sort{|a,b| a[1] <=> b[1]}.first[0]
        path << next_node
        current = next_node
      end

      puts path.inspect
    end
  end

  private

  def validate_nodes (node, other_node)
    @vertices.has_key?(node) && @vertices.has_key?(other_node)
  end

end
