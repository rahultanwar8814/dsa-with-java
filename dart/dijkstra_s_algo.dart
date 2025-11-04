class Graph {
  final int vertices;
  final List<List<int>> adjacencyMatrix;

  Graph(this.vertices) : adjacencyMatrix = List.generate(vertices, (_) => List<int>.filled(vertices, 0));

  void addEdge(int source, int destination, int weight) {
    adjacencyMatrix[source][destination] = weight;
    adjacencyMatrix[destination][source] = weight; // Uncomment for directed graph
  }

  List<int> dijkstra(int source) {
    List<int> distance = List<int>.filled(vertices, 9999999); // Assume this value as infinity
    Set<int> visited = Set<int>();

    distance[source] = 0;

    for (int i = 0; i < vertices - 1; i++) {
      int u = minDistance(distance, visited);
      visited.add(u);

      for (int v = 0; v < vertices; v++) {
        if (!visited.contains(v) &&
            adjacencyMatrix[u][v] != 0 &&
            distance[u] != 9999999 &&
            distance[u] + adjacencyMatrix[u][v] < distance[v]) {
          distance[v] = distance[u] + adjacencyMatrix[u][v];
        }
      }
    }

    return distance;
  }

  int minDistance(List<int> distance, Set<int> visited) {
    int min = 9999999; // Assume this value as infinity
    int minIndex = -1;

    for (int v = 0; v < vertices; v++) {
      if (!visited.contains(v) && distance[v] <= min) {
        min = distance[v];
        minIndex = v;
      }
    }

    return minIndex;
  }
}

void main() {
  Graph graph = Graph(9);
  graph.addEdge(0, 1, 4);
  graph.addEdge(0, 7, 8);
  graph.addEdge(1, 2, 8);
  graph.addEdge(1, 7, 11);
  graph.addEdge(2, 3, 7);
  graph.addEdge(2, 8, 2);
  graph.addEdge(2, 5, 4);
  graph.addEdge(3, 4, 9);
  graph.addEdge(3, 5, 14);
  graph.addEdge(4, 5, 10);
  graph.addEdge(5, 6, 2);
  graph.addEdge(6, 7, 1);
  graph.addEdge(6, 8, 6);
  graph.addEdge(7, 8, 7);

  List<int> distances = graph.dijkstra(0);

  print("Vertex Distance from Source");
  for (int i = 0; i < graph.vertices; i++) {
    print("$i \t\t ${distances[i]}");
  }
}
