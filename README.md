# Prolog-Predicates

This file contains Prolog predicates that handle queries related to competitions, geographic information, paths, and more. Below is a detailed description of each main predicate.

## Predicates

### 1. `winnerAtHome(C)`

The `winnerAtHome` predicate checks if a country `C` has won a competition while hosting it.

- **Input**: A country `C`.
- **Output**: True if the country `C` won as the host; false otherwise.
- **Usage**: Used to identify countries that have won competitions on their home ground.

### 2. `sameContinent(Y)`

The `sameContinent` predicate verifies if all finalists in a given year `Y` are from the same continent.

- **Input**: A year `Y`.
- **Output**: True if all finalists are from the same continent; false otherwise.
- **Usage**: Helps to analyze geographic trends in competitions.

### 3. `threeFinals(C)`

The `threeFinals` predicate checks if a country `C` has reached the finals three times.

- **Input**: A country `C`.
- **Output**: True if the country has been in the finals three times; false otherwise.
- **Usage**: Useful for identifying consistently high-performing countries.

### 4. `threeContinents(C)`

The `threeContinents` predicate verifies if a country `C` has reached the finals on three different continents.

- **Input**: A country `C`.
- **Output**: True if the country reached the finals on three different continents; false otherwise.
- **Usage**: Indicates global competitiveness and adaptability.

### 5. `path(A, B)`

The `path` predicate determines if there is a path between two nodes `A` and `B`.

- **Input**: Two nodes, `A` and `B`.
- **Output**: True if a path exists; false otherwise.
- **Usage**: Useful for route finding or connectivity analysis.

### 6. `biconnected(A, B)`

The `biconnected` predicate checks if there is a biconnected path between two nodes `A` and `B`.

- **Input**: Two nodes, `A` and `B`.
- **Output**: True if a biconnected path exists; false otherwise.
- **Usage**: Applied in network resilience and redundancy analysis.

### 7. `meetpoint(A, B, P)`

The `meetpoint` predicate finds a meeting point `P` for two paths originating from nodes `A` and `B`.

- **Input**: Nodes `A` and `B`.
- **Output**: A point `P` where paths from `A` and `B` meet.
- **Usage**: Relevant for determining intersections or common access points.

### 8. `grade(Student, Grade)`

The `grade` predicate assigns a `Grade` to a `Student`.

- **Input**: A student and a grade.
- **Output**: True if the specified grade is valid for the student; false otherwise.
- **Usage**: Useful for grade management in academic applications.

### 9. `zeta(X)`

The `zeta` predicate performs a mathematical or logical operation involving `X` (details depend on implementation).

- **Input**: A variable `X`.
- **Output**: Depends on the operation defined in `zeta`.
- **Usage**: Applied in calculations or logical assessments involving `X`.

### 10. `p(A, B)`

The `p` predicate defines a specific relation or condition between `A` and `B`.

- **Input**: Two variables, `A` and `B`.
- **Output**: True if `A` and `B` satisfy the defined relation; false otherwise.
- **Usage**: Flexible and can be applied to various types of relations or rules.

### 11. `fromTo(Start, End)`

The `fromTo` predicate finds a path or sequence from `Start` to `End`.

- **Input**: Start and end points.
- **Output**: True if a path or sequence exists; false otherwise.
- **Usage**: Often used in directed graphs or ordered sequences.

### 12. `smooth(L)`

The `smooth` predicate checks if a list `L` is smooth according to specific criteria (e.g., monotonicity).

- **Input**: A list `L`.
- **Output**: True if `L` meets the smoothness criteria; false otherwise.
- **Usage**: Can be applied to check data consistency or sequence properties.

### 13. `robots(Position, Command)`

The `robots` predicate determines the final `Position` of a robot after executing a `Command`.

- **Input**: Initial position and a command.
- **Output**: The robot’s position after the command is executed.
- **Usage**: Relevant for simulations, robotics programming, and command processing.
