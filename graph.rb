class Graph
  def initialize
    @nodes = {}
  end

  def add_vertex(node, edges)
    #g = Graph.new
    #g.add_vertex('a', {'b' => 2, 'c' => 1}
    @nodes[node] = edges
  end

  def shortest_path(start, finish)

  end
end
