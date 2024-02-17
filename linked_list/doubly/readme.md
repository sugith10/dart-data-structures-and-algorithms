# Doubly Linked List in Dart

## Overview

Welcome to the "Doubly Linked List in Dart" section of our Dart Data Structures and Algorithms repository! In this section, we explore the implementation and usage of a doubly linked list, a versatile data structure in computer science.

## Doubly Linked List

A doubly linked list is a type of linked list in which each node contains a data element and two pointers, one pointing to the next node and another pointing to the previous node. This bidirectional linking allows for easier traversal in both directions.

## Node

A node in a doubly linked list contains data, a reference to the next node (next pointer), and a reference to the previous node (prev pointer).

### Doubly Linked List Representation

The Dart implementation of the doubly linked list is encapsulated in the `LinkedList` class, with each node represented by the `Node` class.

### Operations You Can Find in the `doubly_linked_list.dart` File:

- **Adding Nodes:** The `addNode` method adds a new node to the end of the list.

- **Displaying the List:** The `display` method prints the elements of the list from the head to the tail.

- **Displaying Backward:** The `displayBackward` method prints the elements of the list from the tail to the head.

- **Deleting a Node:** The `delete` method removes a node with a specific data value from the list.

- **Inserting at a Specific Position:** The `insertAt` method inserts a new node with given data after a node with a specified data value.

- **Sorted List Deletion:** The `sortedListDel` method removes duplicate elements in a sorted list, keeping only one occurrence of each.

- **Sorted List Deletion (Alternative):** The `sortedListDelete` method also removes duplicate elements in a sorted list but in a slightly different way.

- **Adding List Elements to Another List:** The `addToList` method appends the elements of the list to an existing list.

Feel free to explore, learn, and contribute to the growing knowledge base in doubly linked list implementations in Dart!