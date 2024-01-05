class Graph {
  Map<int, List<int>> graph = {};

  void addVertex(int data) {
    if (!graph.containsKey(data)) {
      graph[data] = [];
    }
  }

  void addEdge(int from, int to, [bool bi = false]) {
    addVertex(from);
    addVertex(to);
    graph[from]!.add(to);

    if (bi) {
      graph[to]!.add(from);
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
  Graph newGraph = Graph();
  newGraph.addEdge(20, 24, true);
  newGraph.addEdge(10, 56, true);
  newGraph.addEdge(10, 24);
  newGraph.addEdge(0, 24);
  newGraph.addEdge(20, 67);
  newGraph.display();
}
