class Graph{
  Map<int, List<int>> graph = {};


  add(int data){
    if(!graph.containsKey(data)){
      graph[data] = [];
    }
  }

  insert(int data,int edge, [bool bidir = false]){
    if(!graph.containsKey(data)){
      add(data);
    }
    if(!graph.containsKey(edge)){
      add(edge);
    }
    graph[data]!.add(edge);
    if(bidir){
      graph[edge]!.add(data);
    }
  }

  getEdge(int data){
    List<int> numbers = [];
    if(graph.containsKey(data)){
      for(int i in graph[data]!){
        numbers.add(i);
      }
    }else{
      print('no key found');
    }
    print(numbers);
  }
}

main(){
  Graph graph = Graph();
  graph.insert(10, 20);
  graph.insert(10, 22);
  graph.insert(10, 24);
  graph.insert(10, 35);
  graph.insert(35, 48);
  graph.getEdge(10);
}