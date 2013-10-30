require 'rake'
require 'rspec/core/rake_task'

namespace :test do
  RSpec::Core::RakeTask.new :all
end

desc 'Gets the shortest path for an example graph'
task :build_graph do
  load './graph.rb'

  g = Graph.new

  g.add_vertex('a', {'b' => 2, 'c' => 3})
  g.add_vertex('b', {'a' => 2, 'd' => 5})
  g.add_vertex('c', {'a' => 3, 'g' => 1})
  g.add_vertex('d', {'b' => 5, 'g' => 3, 'e' => 1, 'f' => 10})
  g.add_vertex('e', {'d' => 1, 'f' => 2})
  g.add_vertex('f', {'d' => 1, 'e' => 2, 'g' => 4})
  g.add_vertex('g', {'d' => 3, 'f' => 4, 'c' => 1})

  path = g.shortest_path('a', 'f')
  puts "The shortest path from a to f is: #{path}"

end  

