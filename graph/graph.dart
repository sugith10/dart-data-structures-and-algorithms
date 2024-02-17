class Graph {
  Map<int, List<int>> graph = {};

  void insert(int vertex, int edge, [bool bidir = false]) {
    if (!graph.containsKey(vertex)) {
      graph[vertex] = [];
    }
    if (!graph.containsKey(edge)) {
      graph[edge] = [];
    }
    graph[vertex]!.add(edge);
    if (bidir) {
      graph[edge]!.add(vertex);
    }
  }

  void showEdges(int vertex) {
    if (graph.containsKey(vertex)) {
      print(graph[vertex]);
    } else {
      print('not found');
    }
  }

  void bfs(int vertex) {
    Set<int> visited = {};
    List<int> queue = [];

    queue.add(vertex);
    visited.add(vertex);

    while (queue.isNotEmpty) {
      int current = queue[0];
      queue.removeAt(0);
      for (int i in graph[current]!) {
        if (!visited.contains(i)) {
          visited.add(i);
          queue.add(i);
        }
      }
    }
    print(visited);
  }

  void dfs(int vertex) {
    if (graph.containsKey(vertex)) {
      Set<int> visited = {};
      _dfshelper(vertex, visited);
      print(visited);
    } else {
      print('vertex not found in graph');
    }
  }

  void _dfshelper(int vertex, Set<int> visited) {
    visited.add(vertex);
    for (int i in graph[vertex]!) {
      if (!visited.contains(i)) {
        _dfshelper(i, visited);
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

void main() {
  Graph graph = Graph();
  graph.insert(10, 14);
  graph.insert(10, 15);
  graph.insert(10, 16);
  graph.insert(10, 17);
  graph.insert(10, 18);
  graph.insert(17, 20);
  graph.insert(17, 21);
  // graph.bfs(10);
  // graph.dfs(10);
  graph.display();
}
