# Data Structures

A data structure is a set of data which:

- Is **stored and organized**;
- In a **well-known arrangement/pattern**;
- And, can be **efficiently accessed and updated**.

There are two main categories of DSs:

- *Linear* structure (sequential).
- *Non-linear* structure (graph or tree).

Linear|Non-linear
---|---
Items are arranged in *sequential* order, one after the other.|Items are arranged in a *hierarchical* manner (non-sequential).
Items are present on the *single layer*.|Items are present at *different layers*.
It can always be traversed on a *single run*.|It will probably need *multiple runs*.
Memory utilization is *not efficient*.|Memory utilization *efficiency varies*.
Time complexity *increases with data size*.|Time complexity *remains the same*.

## Linear Data Structures

### Stack

A DS that follows the principle of **Last In First Out** (LIFO).

Actions:

- *Push* (add) new items on the top of the stack.
- *Pop* (remove) items from the top of the stack.

### Hash Table

In a hash table (aka hash map), items are stored in *key-value pairs*. The process of generating a new index when adding a new item is called *hashing*.

Item shape:

- *Key*: unique integer value used as an ID.
- *Value*: the actual data value.

### Queue

Also known as *simple queue*, it's a DS that follows the principle of **First In First Out** (FIFO). It's worth noticing that, when an element is taken out from the queue, the rest of the items do not change their current position, they don't "move" forward.

Actions:

- *Enqueue* (add) new items to the end of the queue.
- *Dequeue* (remove) items from the front of the queue.

#### Circular Queue

A special queue where *the last position is connected to the first one*. Instead of leaving a non-usable empty space each time we remove an element (which happens in a simple queue), a circular queue is capable of reusing places by using the free ones (starting from the first one) as we reach the end of the queue.

#### Priority Queue

In a priority queue, *items are associated with a priority value* and served (removed) according to it. In case the priority is the same for multiple items, the order in the queue is the alternative factor to choose the one to dequeue.

#### Deque

A deque (or double ended queue) doesn't follow the FIFO principle, it's a special queue in which we can *add and remove from either the front or the rear*.

Special types of deque:

- **Input Restricted Deque**:
  - Input is restricted at a single end.
  - Output can be performed at both the ends.
- **Output Restricted Deque**:
  - Output is restricted at a single end.
  - Input can be performed at both the ends.

### Linked List

It's a DS that not only holds the data in each node, but also *includes the address to the next node*. There are two special nodes, the first and the last one. The first one is called `head`, no node points to it. The last one is called `null` as it points to null.

#### Circular Linked List

A variation of a linked list in which *the last item is linked to the first one* (the special node `null` doesn't exist here).

#### Doubly Linked List

A linked list in which nodes *include the address to the previous node* in addition to the address to the next one. The previous node of `head` is null, same as `null`'s next.

## Tree Data Structures

Tree terminology:

- *Node*: the data and pointers to its child nodes.
- *Edge*: the link between two nodes.
- *Root*: the topmost node of a tree.
- *Height of a tree*: the height of the root (or the depth of the deepest node).
- *Height of a node*: the number of edges from the deepest leaf.
- *Depth of a node*: the number of edges from the root node.
- *Degree of a node*: the number of branches of a node.
- *Forest*: a collection of disjoint trees.
- *Leaf*: the last node of a branch.

Ways to traverse a tree:

- *Inorder*: left subtree nodes, root node, right subtree nodes.
- *Preorder*: root node, left subtree nodes, right subtree nodes.
- *Postorder*: left subtree nodes, right subtree nodes, root node.

### Binary Tree

A binary tree is a tree DS in which each node has *at most two children*.

Each node contains:

- The items data.
- Left child address.
- Right child address.

#### Full Binary Tree

A special binary tree in which *each node has either two or no children*. It's also known as "a proper binary tree".

Theorem, let:

- `i` = number of internal nodes.
- `n` = number of nodes.
- `l` = number of leaves.
- `λ` = number of levels.

Therefore:

- Number of leaves = `i + 1` or `(n + 1) / 2`.
- Number of nodes = `2i + 1` or `2l - 1`.
- Number of internal nodes = `(n - 1) / 2` or `l - 1`.
- The number of leaves is at most `2^(λ - 1)`.

#### Perfect Binary Tree

A perfect binary tree is the one on which:

- *Every internal node has two childs*.
- *Leaf nodes are at the same level* (all of them).

Theorems:

- A tree of height `h` has `2^(h + 1) – 1` nodes.
- A tree with `n` nodes has height `log(n + 1) - 1 = Θ(ln(n))`.
- A tree of height `h` has `2^h` leaf nodes.
- The average depth of a node is `Θ(ln(n))`.

#### Complete Binary Tree

It's a tree that shares features among the perfect binary tree, but there might be some differences. The main difference is that *not every parent node has to have two childs*.

Conditions:

1. *Every level must be completely filled* (except for rule number 2).
1. *The last left leaf of the last level might not have a right sibling*.

Therefore all leaf nodes lean towards the left (in case there is no last right leaf) then a complete binary tree doesn't have to be a perfect binary tree.

##### Heap Data Structure

A heap data structure (aka binary heap) is a complete binary tree that *satisfies the heap property*.

There are two different heap properties:

- **Max heap property**: any node is *greater than its childs* (the root is the largest).
- **Min heap property**: any node is *smaller than its childs* (the root is the smallest).

**Fibonacci Heap** is a variation of heap DS. It consists of a *collection of trees* (instead of being a single one) in which *a node can have more than two or no children* at all. A pointer is kept to the minimum value, which is the root of a tree). All roots are connected as a circular doubly linked list.

#### Degenerate Binary Tree

Degenerate (or pathological) binary tree is a tree in which *every node has a single child either left or right* (there are no nodes with both left and right children).

#### Skewed Binary Tree

A skewed binary tree is a tree in which *all child nodes are left or right nodes*.

The two possible types of skewed binary tree:

- **Left-skewed binary tree**.
- **Right-skewed binary tree**.

#### Balanced Binary Tree

It's a special binary tree (also known as height-balanced binary tree) in which the *height difference between the left and the right subtree for each node is either 0 or 1*.

### Binary Search Tree

A BST is a DS that allows us to easily maintain a *sorted list of numbers*, it's one of the only data structures that rules based on values, not only the actual structure. We can search, add, and remove in `O(log(n))` time (being `n` the number of nodes).

Conditions:

- Each node from a *left subtree is smaller than its root* node.
- Each node from a *right subtree is greater than its root* node.

#### Self-balancing Binary Search Tree

##### AVL Tree

It's a self-balancing BST in which each node holds its data and balance factor. The name comes from its inventors Adelson-Velsky & Landis.

The *balance factor is the height difference between left and right subtrees*. It can be either left height minus right height or right height minus left height. The actual balance is achieved by keeping factor values at -1, 0, or +1.

##### B-tree

A b-tree is another type of self-balancing BST in which each node can have *more than one key and more than two children*. It's also known as a height-balanced m-way tree.

- Nodes have their keys stored in increasing order.
- Nodes hold information that lets us know if they're a leaf.
- Each internal node can contain at most `n - 1` keys.
- All leaves have the same depth.
- The root has at least 2 children.

##### Red Black Tree

A type of self-balancing BST in which *each node stores an extra bit* for denoting the color, either red or black. Colors are used to ensure the tree remains balanced during insertions and deletions.

Properties:

- The root is black.
- All NIL nodes (leaves) are black.
- A red node does not have a red child.
- Every path from a given node to any of its descendant NIL nodes contains the same amount of black nodes.

##### B+ Tree

An advanced form of a self-balancing tree in which *all the data is stored on the leaves*. Internal nodes are called index sets and can only store key values.

Properties:

- Leaf nodes are linked together as a sequence set.
- All leaves are at the same level.
- The root has at least two children (if it's not the only leaf).

## Graph Data Structures

A graph DS consists of:

- A collection of *vertices* V.
- A collection of *edges* E, ordered pairs of vertices (u, v).

Graph terminology:

- *Adjacency*: an edge connecting two vertices makes them adjacent.
- *Path*: a sequence of edges that connect a vertex to another one.
- *Directed graph*: a graph in which the edges (u, v) and (v, u) are different things.

### Adjacency Matrix

It's a way of representing a graph as *boolean values in a 2D array* of size V times V, in which each column and row represent each vertex. For any value `a[i][j]`, if it's `1`: there is an edge connecting the vertex `i` and `j`.

Notice that values in `a[i][j]` and `a[j][i]` should both be defined if it's an undirected graph, thus making the matrix symmetric (about the diagonal).

### Adjacency List

It represents a graph as *an array of linked lists*. The index of the array represents a vertex, each element in its linked list represents an edge pair vertex.

----

Reference:

- Advanced Data Structures.
- Data Structures and Algorithms in C++.
- Handbook of Data Structures and Applications.
- [Learning DS & Algorithms (programiz.com)](https://www.programiz.com/dsa).
