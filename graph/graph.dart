class Graph{
  Map<int, List<int>> graph = {};

  insert(int vertex, int edge, [bool bidir = false]){
    if(!graph.containsKey(vertex)){
      graph[vertex] = [];
    }
    if(!graph.containsKey(edge)){
      graph[edge] = [];
    }
    graph[vertex]!.add(edge);
    if(bidir){
      graph[edge]!.add(vertex);
    }
  }

    showEdges(int vertex) {
    if (graph.containsKey(vertex)) {
      print(graph[vertex]);
    }else{
      print('not found');
    }
  }

   bfs(int vertex){
    Set<int> visited = {};
    List<int> queue = [];

    queue.add(vertex);
    visited.add(vertex);

    while(queue.isNotEmpty){
      int current = queue[0];
      queue.removeAt(0);
      for(int i in graph[current]!){
        if(!visited.contains(i)){
          visited.add(i);
          queue.add(i);
        }
      }
    }
    print(visited);
  }


  dfs(int vertex){
    if(graph.containsKey(vertex)){
      Set<int> visited = {};
      dfshelper(vertex, visited);
      print(visited);
    }else{
      print('vertex not found in graph');
    }
  }
  dfshelper(int vertex, Set<int> visited){
    visited.add(vertex);
    for(int i in graph[vertex]!){
      if(!visited.contains(i)){
        dfshelper(i, visited);
      }
    }
  }

    void display() {
    print("{");
    graph.forEach((key, edges) {
      print("$key : $edges");
    });
    print("}");
  }
}


main(){
  Graph graph = Graph();
  graph.insert(10, 14);
  graph.insert(10, 15);
  graph.insert(10, 16);
  graph.insert(10, 17);
  graph.insert(10, 18);
  graph.insert(17, 20);
  graph.insert(17, 21);
  // graph.bfs(10);
  graph.dfs(10);
  // graph.display();
}

