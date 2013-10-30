require 'rspec'
require './graph.rb'

describe Graph do
  let(:graph) { Graph.new }
  let(:vertices) { Hash.new }
  let(:a_node) { 'a' }
  let(:a_edges) { {'b' => 2, 'c' => 3} }
  let(:g_node) { 'g' }
  let(:g_edges) { {'d' => 3, 'b' => 1} }
  let(:start_node) {a_node}
  let(:finish_node) {g_node}

  describe '#add_vertex' do
    it 'creates a graph by adding nodes and vertices' do
      expect(graph.add_vertex(a_node, a_edges)).to change{vertices.size}.by(1)
      expect(vertices.first[0]).to eql 'a'
      expect(vertices.first[1]).to be_kind_of Hash
    end
  end

  describe '#shortest_path' do
    it 'returns the shortest path' do
      expect(graph.shortest_path(start_node, finish_node)).to eql 'a => b => d => g'
    end
  end
end

