# Queue in Dart

## Overview

Welcome to the "Queue in Dart" section of our Dart Data Structures and Algorithms repository! In this section, we explore the implementation and usage of a basic queue, a fundamental data structure in computer science.

## Queue

A queue is a linear data structure that follows the First-In-First-Out (FIFO) principle, where the first element added is the first to be removed. In Dart, a queue can be implemented using a linked list.

### Node

The `Node` class is used to represent individual nodes in the queue. Each node contains data and a reference to the next node.

### Queue Implementation

The `Queue` class encapsulates the logic for creating and manipulating the queue. It includes operations such as enqueue (adding elements to the rear), dequeue (removing elements from the front), and display.

## Types of Queues

### Circular Queue

A circular queue is an extension of the basic queue where the last element is connected to the first element to form a circle. This structure allows for efficient use of space and supports continuous operation.

### Double-Ended Queue (Deque)

A double-ended queue, or deque, is a more versatile queue that allows insertion and deletion of elements from both the front and the rear. It provides the flexibility of both stacks and queues in a single data structure.

### Priority Queue

A priority queue is a queue where each element is assigned a priority and elements with higher priority are served before elements with lower priority. It can be implemented using a binary heap.

## Queue Representation

The `Queue` class encapsulates the logic for creating and manipulating the queue. It includes the following operations:

## Operations in `queue.dart`:

- **Enqueue (Add to Rear):** The `enqueue` method adds a new element to the rear of the queue.

- **Display the Front:** The `display` method prints the element at the front of the queue.

- **Dequeue (Remove from Front):** The `dequeue` method removes the element from the front of the queue.

Feel free to explore, learn, and contribute to the growing knowledge base in queue implementations in Dart!