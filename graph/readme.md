# Graph Implementation in Dart

## Overview

Welcome to the "Graph Implementation in Dart" section of our Dart Data Structures and Algorithms repository! In this section, we explore the implementation of a basic graph using the Dart programming language. Graphs are versatile data structures that represent relationships between entities, making them an essential concept in computer science.

## Graph Concepts

### What is a Graph?

A graph is a collection of nodes (vertices) and edges that connect pairs of nodes. It is used to represent relationships and connections between entities.

### Depth-First Search (DFS)

DFS is a graph traversal algorithm that explores as far as possible along each branch before backtracking. It can be used to find paths, connected components, and perform various graph-related tasks.

### Breadth-First Search (BFS)

BFS is a graph traversal algorithm that explores a graph level by level, visiting all neighbors of a node before moving on to the next level. It is often used to find the shortest path in unweighted graphs.

## Graph Representation

In the provided `Graph` class, we represent the graph using an adjacency list, utilizing a Dart `Map`. The keys of the map represent vertices, and the corresponding values are lists of edges associated with each vertex.

## Operations You Can Find in the `graph.dart` File:

### Inserting Edges

The `insert` method allows you to insert edges into the graph. You can specify a vertex, an edge, and an optional parameter `bidir` to indicate whether the edge is bidirectional (default is `false`).

### Showing Edges

The `showEdges` method displays the edges associated with a given vertex.

### Breadth-First Search (BFS)

The `bfs` method performs a Breadth-First Search traversal starting from a specified vertex. It utilizes a queue to explore vertices level by level.

### Depth-First Search (DFS)

The `dfs` method performs a Depth-First Search traversal starting from a specified vertex. It utilizes recursion to explore vertices as deeply as possible before backtracking.

### Displaying the Graph

The `display` method prints the entire graph, showing vertices and their associated edges.

## Main Example

The `main` function demonstrates the usage of the `Graph` class, inserting edges and performing a DFS traversal starting from a specific vertex.

Feel free to explore, learn, and contribute to the growing knowledge base in Graph implementations, DFS, and BFS in Dart!
