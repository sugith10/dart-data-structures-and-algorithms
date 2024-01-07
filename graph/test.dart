// // // class Graph{
// // //   Map<int,List<int>> graph = {};

// // //   addVertex(int key){
// // //     if(!graph.containsKey(key)){
// // //       graph[key] = [];
// // //     }
// // //   }

// // //   insert(int key, int edge, [bool bidirect = false ]){
// // //     addVertex(key);
// // //     addVertex(edge);
// // //     if(bidirect == false){
// // //       graph[key]!.add(edge);
// // //     }else{
// // //         graph[key]!.add(edge);
// // //         graph[edge]!.add(key);
// // //     }
// // //   }

// // //   getEdges(int vertex){
// // //     if(graph.containsKey(vertex) && graph[vertex]!.isNotEmpty){
// // //       print(graph[vertex]);
// // //     }else{
// // //       print('no vertex found');
// // //     }
// // //   }
// // // }

// // // main(){
// // //   Graph graph = Graph();
// // //   graph.insert(10, 11);
// // //   graph.insert(10, 12);
// // //   graph.insert(10, 13);
// // //   graph.insert(10, 14);
// // //   graph.insert(10, 15);
// // //   graph.getEdges(10);
// // // }

// // // class Graph{
// // //   Map<int,List<int>> graph = {};

// // //   adVertex(int data){
// // //     if(!graph.containsKey(data)){
// // //       graph[data] = [];
// // //     }
// // //   }

// // //   adEdge(int vertex,int edge,[bool bidir=false]){
// // //     if(!graph.containsKey(vertex)){
// // //       adVertex(vertex);
// // //     }
// // //     if(!graph.containsKey(edge)){
// // //       adVertex(edge);
// // //     }

// // //       graph[vertex]!.add(edge);
// // //       if(bidir){
// // //       graph[vertex]!.add(edge);
// // //       graph[edge]!.add(vertex);
// // //       }
// // //     }

// // //   getAllEdge(int vertex){
// // //     if(graph.containsKey(vertex)){
// // //       print(graph[vertex]);
// // //     }else{
// // //       print('nothing found');
// // //     }
// // //   }

// // //   void bfs(int startVertex) {
// // //     Set<int> visited = {};
// // //     List<int> queue = [];
// // //     List<int> result = [];

// // //     visited.add(startVertex);
// // //     queue.add(startVertex);

// // //     while (queue.isNotEmpty) {
// // //       int currentVertex = queue[0];
// // //       queue.removeAt(0);
// // //       result.add(currentVertex);
// // //       for (int neighbor in graph[currentVertex]!) {
// // //         if (!visited.contains(neighbor)) {
// // //           visited.add(neighbor);
// // //           queue.add(neighbor);
// // //         }
// // //       }
// // //     }
// // //     print(result);
// // //   }

// // // }

// // // main(){
// // //   Graph graph = Graph();
// // //   graph.adEdge(10, 11);
// // //   graph.adEdge(18, 20);
// // //   graph.adEdge(10, 12);
// // //   graph.adEdge(10, 13);
// // //   graph.adEdge(10, 14);
// // //   graph.adEdge(12, 30);
// // //   graph.adEdge(12, 35);
// // //   // graph.getAllEdge(10);
// // //   graph.bfs(10);
// // // }

// // class Graph {
// //   Map<int, List<int>> graph = {};

// //   add(int vertex) {
// //     if (!graph.containsKey(vertex)) {
// //       graph[vertex] = [];
// //     }
// //   }

// //   addEdge(int vertex, int edge, [bool bidir = false]) {
// //     if (!graph.containsKey(vertex)) {
// //       add(vertex);
// //     }
// //     if (!graph.containsKey(edge)) {
// //       add(edge);
// //     }
// //     graph[vertex]!.add(edge);
// //     if(bidir){
// //       graph[edge]!.add(vertex);
// //     }
// //   }

// //   showEdges(int vertex) {
// //     if (graph.containsKey(vertex)) {
// //       print(graph[vertex]);
// //     }else{
// //       print('not found');
// //     }
// //   }

// //   bfc(int vertex){
// //     Set<int> check = {};
// //     List<int> queue = [];

// //     check.add(vertex);
// //     queue.add(vertex);

// //     while(queue.isNotEmpty){
// //       int current = queue[0];
// //       queue.removeAt(0);
// //       for(int i in graph[current]!){
// //         if(!check.contains(i)){
// //           check.add(i);
// //           queue.add(i);
// //         }
// //       }
// //     }
// //     print(check);
// //   }

// //   // dfs(int startVertex) {
// //   //   Set<int> visited = {};
// //   //   dfsRecursive(startVertex, visited);
// //   //   print(visited);
// //   // }

// //   // dfsRecursive(int vertex, Set<int> visited) {
// //   //   visited.add(vertex);
// //   //   for (int neighbor in graph[vertex]!) {
// //   //     if (!visited.contains(neighbor)) {
// //   //       dfsRecursive(neighbor, visited);
// //   //     }
// //   //   }
// //   // }

// //   dfs(int startVertex){
// //     Set<int> visit = {};
// //     dfsRecu(startVertex,visit);
// //     print(visit);
// //   }

// //   dfsRecu(int vertex, Set<int> visit){
// //     visit.add(vertex);
// //     for(int i in graph[vertex]!){
// //       if(!visit.contains(i)){
// //         dfsRecu(i,visit);
// //       }
// //     }
// //   }
// // }

// // main(){
// //   Graph graph = Graph();
// //   graph.addEdge(10, 15, true);
// //   graph.addEdge(10, 16);
// //   graph.addEdge(10, 176);
// //   graph.addEdge(176, 8);
// //   // graph.showEdges(10);
// //   // graph.showEdges(15);
// //   // graph.bfc(10);
// //   graph.dfs(10);
// // }

// class Graph{
//   Map<int, List<int>> graph = {};

//   insert(int vertex, int edge, [bool bidir = false]){
//     if(!graph.containsKey(vertex)){
//       graph[vertex] = [];
//     }
//     if(!graph.containsKey(edge)){
//       graph[edge] = [];
//     }
//     graph[vertex]!.add(edge);
//     if(bidir){
//       graph[edge]!.add(vertex);
//     }
//   }

//   bfs(int vertex) {
//   if (!graph.containsKey(vertex)) {
//     print('Key not found');
//   } else {
//     Map<int, int> distance = {};
//     List<int> queue = [];

//     distance[vertex] = 0;
//     queue.add(vertex);

//     while (queue.isNotEmpty) {
//       int current = queue[0];
//       queue.removeAt(0);

//       for (int i in graph[current]!) {
//         if (!distance.containsKey(i)) {
//           distance[i] = distance[current]! + 1;
//           queue.add(i);
//         }
//       }
//     }

//     print(distance);
//   }
// }


//   dfs(int vertex){
//     if(graph.containsKey(vertex)){
//       Set<int> visited = {};
//       dfshelper(vertex, visited);
//       print(visited);
//     }else{
//       print('vertex not found in graph');
//     }
//   }
//   dfshelper(int vertex, Set<int> visited){
//     visited.add(vertex);
//     for(int i in graph[vertex]!){
//       if(!visited.contains(i)){
//         dfshelper(i, visited);
//       }
//     }
//   }
// }

// main(){
//   Graph graph = Graph();
//   graph.insert(10, 14);
//   graph.insert(10, 15);
//   graph.insert(10, 16);
//   graph.insert(10, 17);
//   graph.insert(10, 18);
//   graph.insert(17, 20);
//   graph.insert(17, 21);
//   graph.bfs(10);
//   graph.dfs(10);
// }


// class Graph {
//   Map<int, List<int>> graph = {};

//   void addVertex(int data) {
//     if (!graph.containsKey(data)) {
//       graph[data] = [];
//     }
//   }

//   void addEdge(int from, int to, [bool bi = false]) {
//     addVertex(from);
//     addVertex(to);
//     graph[from]!.add(to);

//     if (bi) {
//       graph[to]!.add(from);
//     }
//   }



// void main() {
//   Graph newGraph = Graph();
//   newGraph.addEdge(20, 24, true);
//   newGraph.addEdge(10, 56, true);
//   newGraph.addEdge(10, 24);
//   newGraph.addEdge(0, 24);
//   newGraph.addEdge(20, 67);
//   newGraph.display();
// }
