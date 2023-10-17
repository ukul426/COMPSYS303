
#include "program.h"

Movement movementArray[25];


// Define the grid map with obstacles (1) and open cells (0)
int map[ROWS][COLS] = {
    {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
    {1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
    {1,0,1,0,1,1,1,1,1,0,1,1,1,0,1,1,1,0,1},
    {1,0,0,0,1,0,0,0,1,0,0,0,0,0,0,0,1,0,1},
    {1,1,1,0,1,0,1,0,1,1,1,0,1,0,1,1,1,0,1},
    {1,0,0,0,1,0,1,0,0,0,1,0,1,0,0,0,0,0,1},
    {1,0,1,1,1,0,1,0,1,0,1,0,1,0,1,1,1,0,1},
    {1,0,1,0,1,0,0,0,1,0,1,0,1,0,1,0,0,0,1},
    {1,0,1,0,1,0,1,1,1,0,1,0,1,0,1,0,1,1,1},
    {1,0,0,0,1,0,1,0,0,0,1,0,0,0,1,0,0,0,1},
    {1,1,1,0,1,0,1,1,1,1,1,1,1,1,1,1,1,0,1},
    {1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
    {1,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1},
    {1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1},
    {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
};

// Structure to represent a node in the grid
typedef struct {
    int x, y;
} Node;

// Structure to represent a cell in the grid
typedef struct {
    int cost;
    Node parent;
} Cell;

// Initialize the path length
int pathLength = 0;

// Trace the path from target to start
Node path[ROWS * COLS];


// Function to check if a cell is within the map boundaries
bool isValidCell(int x, int y) {
    return (x >= 0 && x < ROWS && y >= 0 && y < COLS);
}

// Function to find the shortest path using Dijkstra's algorithm
void dijkstra(int startX, int startY, int targetX, int targetY) {
    // Create an array to store visited status and cell information
    Cell grid[ROWS][COLS];

    // Initialize all cells with maximum cost and invalid parent
    for (int i = 0; i < ROWS; i++) {
        for (int j = 0; j < COLS; j++) {
            grid[i][j].cost = INT_MAX;
            grid[i][j].parent.x = -1;
            grid[i][j].parent.y = -1;
        }
    }

    // Initialize the starting cell
    grid[startX][startY].cost = 0;
    Node currentNode = {startX, startY};

   
    // Create an array to store possible movement directions
    int dx[] = {1, -1, 0, 0};
    int dy[] = {0, 0, 1, -1};

    // Main loop
    while (currentNode.x != targetX || currentNode.y != targetY) {
        // Mark the current cell as visited
        int x = currentNode.x;
        int y = currentNode.y;
        grid[x][y].cost = -1;

        // Check neighbors
        for (int i = 0; i < 4; i++) {
            int newX = x + dx[i];
            int newY = y + dy[i];

            if (isValidCell(newX, newY) && map[newX][newY] == 0) {
                int newCost = grid[x][y].cost + 1;
                if (newCost < grid[newX][newY].cost) {
                    grid[newX][newY].cost = newCost;
                    grid[newX][newY].parent.x = x;
                    grid[newX][newY].parent.y = y;
                }
            }
        }

        // Find the next unvisited cell with the lowest cost
        int minCost = INT_MAX;
        for (int i = 0; i < ROWS; i++) {
            for (int j = 0; j < COLS; j++) {
                if (grid[i][j].cost != -1 && grid[i][j].cost < minCost) {
                    minCost = grid[i][j].cost;
                    currentNode.x = i;
                    currentNode.y = j;
                }
            }
        }
    }
    // Store the path in a temporary array
 // Store the starting point in the path
    Node tempPath[ROWS * COLS];
    tempPath[pathLength++] = currentNode;
    // Trace the path from target to start
    Node current = {targetX, targetY};
    while (current.x != startX || current.y != startY) {
        tempPath[pathLength++] = current;
        current = grid[current.x][current.y].parent;// Move to the parent cell
    }
   

   

    // Reverse the path and store it in pathCoordinates
    for (int j = pathLength - 1, k = 0; j >= 0; j--, k++) {
        path[k].x = tempPath[j].x;
        path[k].y = tempPath[j].y;
    }
   

}


//input order are start row, column, target row, column
void getMovementArray(int start_row,int start_column,int target_row,int target_column,RobotDirection current_direction) {//MAX_PATH_LENGTH  int pathCoordinates[11][2]
    int pathLength = 35; 
    int stepCount = 0;
    int position = -1;
    
    //naming error
    int current_row=start_row;
    int current_column=start_column;

    for (int i = 0; i < pathLength; i++) {
        int next_row = path[i].x;
        int next_column = path[i].y;



        if(current_row == target_row && current_column == target_column ){
                    stepCount++;
                    position++;
                    if(current_direction==EAST ||current_direction==WEST){
                        movementArray[position].distance = stepCount*CM_PER_BLOCK_HORIZ;
                    }else{
                        movementArray[position].distance = stepCount*CM_PER_BLOCK_VERT;
                    }
                    movementArray[position].turnDirection = 'E';
                    break;
        }
        

        switch (current_direction) {
            case NORTH:
                if (next_row<current_row && next_column == current_column) { 
                    // Go straight
                    stepCount++;
                    current_row = next_row; // Update coordinates
                    current_column = next_column;
                    continue; 
                } else if (next_row==current_row && next_column > current_column) {
                    // Turn right
                    stepCount++;
                    position++;
                    movementArray[position].distance = stepCount * CM_PER_BLOCK_VERT ;
                    movementArray[position].turnDirection = 'R';
                    current_row = next_row; // Update coordinates
                    current_column = next_column;
                    stepCount = 0;
                    current_direction = EAST;
                } else if (next_row==current_row && next_column < current_column) {
                    // Turn left
                    stepCount++;
                    position++;
                    movementArray[position].distance = stepCount * CM_PER_BLOCK_VERT ;
                    movementArray[position].turnDirection = 'L';
                    current_row = next_row; // Update coordinates
                    current_column = next_column;
                    stepCount = 0;
                    current_direction = WEST;
                }
                break;
                
                
            case EAST:
                if (next_row==current_row && next_column > current_column) { 
                    // Go straight
                    stepCount++;
                    current_row = next_row; // Update coordinates
                    current_column = next_column;
                    continue; // Skip the rest of this iteration and go to the next
                } else if (next_row>current_row && next_column == current_column) {
                    // Turn right
                    stepCount++;
                    position++;
                    movementArray[position].distance = stepCount * CM_PER_BLOCK_HORIZ;
                    movementArray[position].turnDirection = 'R';
                    current_row = next_row; // Update coordinates
                    current_column = next_column;
                    stepCount = 0;
                    current_direction = SOUTH;   
                } else if (next_row<current_row && next_column == current_column) {
                    // Turn left
                    stepCount++;
                    position++;
                    movementArray[position].distance = stepCount * CM_PER_BLOCK_HORIZ;
                    movementArray[position].turnDirection = 'L';
                    current_row = next_row; // Update coordinates
                    current_column = next_column;
                    stepCount = 0;
                    current_direction = NORTH;
                }
                break;

            case SOUTH:
                if (next_row>current_row && next_column == current_column) { 
                    // Go straight
                    stepCount++;
                    current_row = next_row; // Update coordinates
                    current_column = next_column;
                    continue; 
                } else if (next_row==current_row && next_column < current_column) {
                    // Turn right
                    stepCount++;
                    position++;
                    movementArray[position].distance = stepCount * CM_PER_BLOCK_VERT ;
                    movementArray[position].turnDirection = 'R';
                    current_row = next_row; // Update coordinates
                    current_column = next_column;
                    stepCount = 0;
                    current_direction = WEST;
                } else if (next_row==current_row && next_column > current_column) {
                    // Turn left
                    stepCount++;
                    position++;
                    movementArray[position].distance = stepCount * CM_PER_BLOCK_VERT ;
                    movementArray[position].turnDirection = 'L';
                    current_row = next_row; // Update coordinates
                    current_column = next_column;
                    stepCount = 0;
                    current_direction = EAST;
                }
                break;
                
                
            case WEST:
                if (next_row==current_row && next_column < current_column) { 
                    // Go straight
                    stepCount++;
                    current_row = next_row; // Update coordinates
                    current_column = next_column;
                    continue; 
                } else if (next_row<current_row && next_column == current_column) {
                    // Turn right
                    stepCount++;
                    position++;
                    movementArray[position].distance = stepCount * CM_PER_BLOCK_HORIZ;
                    movementArray[position].turnDirection = 'R';
                    current_row = next_row; // Update coordinates
                    current_column = next_column;
                    stepCount = 0;
                    current_direction = NORTH;
                } else if (next_row>current_row && next_column == current_column) {
                    // Turn left
                    stepCount++;
                    position++;
                    movementArray[position].distance = stepCount * CM_PER_BLOCK_HORIZ;
                    movementArray[position].turnDirection = 'L';
                    current_row = next_row; // Update coordinates
                    current_column = next_column;
                    stepCount = 0;
                    current_direction = SOUTH;
                }
                break;
        }
    }
}


//**************************************************************functions for AStar 
// Function to print the path
////saves the path row,column
//void getPath(Node* endNode) {
//    if (endNode == NULL) {
//        printf("No path found.\n");
//        return;
//    }
//
//    Node* current = endNode;
//    int i=0;
//    int tempPath[MAX_PATH_LENGTH][2];
//    
//    while (current != NULL) {
////        printf("(%d, %d) -> ", current->x, current->y);
//        tempPath[i][0]=current->x;
//        tempPath[i][1]=current->y;
//        i++;
//        current = current->parent;
////        pathLength++;
//        
//        
//    }
//    
//    for(int j=i-1,k=0; j>=0;j--,k++){
//        pathCoordinates[k][1]=tempPath[j][0];
//        pathCoordinates[k][0]=tempPath[j][1];
//    }
//    
//    pathLength=i;//update path length
//}
//// Function to calculate Manhattan distance heuristic
//double heuristic(int x1, int y1, int x2, int y2) {
//    return (abs(x1 - x2) + abs(y1 - y2));
//}
//
//
//// Function to check if a position is valid
//bool isValid(int x, int y) {
//    return x >= 0 && x < MAP_COLS && y >= 0 && y < MAP_ROWS && map[y][x] == 0;
//}

//// A* algorithm
////input order are start row, column, target row, column
//Node* AStar(int startX, int startY, int targetX, int targetY) {
//    
//    // Initialize open and closed sets
//    Node* openSet[MAP_ROWS * MAP_COLS] = {NULL};
//    Node* closedSet[MAP_ROWS][MAP_COLS] = {NULL};
//    
//   
//    // Create the start node
//    Node startNode = {startX, startY, 0.0, heuristic(startX, startY, targetX, targetY),NULL};
//    openSet[0] = &startNode;
//
//    // Main loop
//    while (openSet[0] != NULL) {
//        // Find the node with the lowest f = g + h
//        Node* current = openSet[0];
//        int currentIndex = 0;
//
//        for (int i = 1; openSet[i] != NULL; i++) {
//            //organise in weights order
//            if (openSet[i]->g + openSet[i]->h < current->g + current->h) {
//                current = openSet[i];
//                currentIndex = i;
//            }
//        }
//
//        // Remove current node from open set
//        openSet[currentIndex] = NULL;
//
//        // Check if we reached the target
//        if (current->x == targetX && current->y == targetY) {
//            return current; // Path found
//        }
//
//        // Generate neighbor nodes
//        int dx[] = {-1, 1, 0, 0};
//        int dy[] = {0, 0, -1, 1};
//
//        for (int i = 0; i < 4; i++) {
//            int newX = current->x + dx[i];
//            int newY = current->y + dy[i];
//
//            if (isValid(newX, newY)) {
//                double tentativeG = current->g + 1.0; // Assuming cost to move from one cell to another is 1
//
//                // Check if the neighbor is in the closed set
//                if (closedSet[newX][newY] != NULL && tentativeG >= closedSet[newX][newY]->g) {
//                    continue; // Skip this neighbor
//                }
//
//                // Check if the neighbor is in the open set or if it's a better path
//                bool inOpenSet = false;
//                for (int j = 0; openSet[j] != NULL; j++) {
//                    if (openSet[j]->x == newX && openSet[j]->y == newY) {
//                        inOpenSet = true;
//                        if (tentativeG < openSet[j]->g) {
//                            openSet[j]->g = tentativeG;
//                            openSet[j]->parent = current;
//                        }
//                        break;
//                    }
//                }
//
//                if (!inOpenSet) {
//                    // Add neighbor to the open set
//                    Node* neighbor = (Node*)malloc(sizeof(Node));
//                    neighbor->x = newX;
//                    neighbor->y = newY;
//                    neighbor->g = tentativeG;
//                    neighbor->h = heuristic(newX, newY, targetX, targetY);
//                    neighbor->parent = current;
//
//                    // Find the position to insert the neighbor in the open set to maintain order
//                    int insertIndex = 0;
//                    while (openSet[insertIndex] != NULL && openSet[insertIndex]->g + openSet[insertIndex]->h < neighbor->g + neighbor->h) {
//                        insertIndex++;
//                    }
//
//                    // Shift elements to make space for the new neighbor
//                    for (int j = MAP_ROWS * MAP_COLS - 1; j > insertIndex; j--) {
//                        openSet[j] = openSet[j - 1];
//                    }
//
//                    openSet[insertIndex] = neighbor;
//                }
//            }
//        }
//
//        // Add current node to the closed set
//        closedSet[current->x][current->y] = current;
//    }
//
//    return NULL; // No path found
//}
//.........................................................................................................

//input order are start row, column, target row, column
//void getMovementArray(int start_row,int start_column,int target_row,int target_column,RobotDirection current_direction) {//MAX_PATH_LENGTH  int pathCoordinates[11][2]
//    int pathLength = 35; 
//    int stepCount = 0;
//    int position = -1;
//    
//    //naming error
//    int current_row=start_row;
//    int current_column=start_column;
//
//    for (int i = 0; i < pathLength; i++) {
//        int next_row = path[i].x;
//        int next_column = path[i].y;
//
//
//
//        if(current_row == target_row && current_column == target_column ){
//                    stepCount++;
//                    position++;
//                    if(current_direction==EAST ||current_direction==WEST){
//                        movementArray[position].distance = stepCount*CM_PER_BLOCK_HORIZ;
//                    }else{
//                        movementArray[position].distance = stepCount*CM_PER_BLOCK_VERT;
//                    }
//                    movementArray[position].turnDirection = 'E';
//                    break;
//        }
//        
//
//        switch (current_direction) {
//            case NORTH:
//                if (next_row<current_row && next_column == current_column) { 
//                    // Go straight
//                    stepCount++;
//                    current_row = next_row; // Update coordinates
//                    current_column = next_column;
//                    continue; 
//                } else if (next_row==current_row && next_column > current_column) {
//                    // Turn right
//                    stepCount++;
//                    position++;
//                    movementArray[position].distance = stepCount * CM_PER_BLOCK_VERT ;
//                    movementArray[position].turnDirection = 'R';
//                    current_row = next_row; // Update coordinates
//                    current_column = next_column;
//                    stepCount = 0;
//                    current_direction = EAST;
//                } else if (next_row==current_row && next_column < current_column) {
//                    // Turn left
//                    stepCount++;
//                    position++;
//                    movementArray[position].distance = stepCount * CM_PER_BLOCK_VERT ;
//                    movementArray[position].turnDirection = 'L';
//                    current_row = next_row; // Update coordinates
//                    current_column = next_column;
//                    stepCount = 0;
//                    current_direction = WEST;
//                }
//                break;
//                
//                
//            case EAST:
//                if (next_row==current_row && next_column > current_column) { 
//                    // Go straight
//                    stepCount++;
//                    current_row = next_row; // Update coordinates
//                    current_column = next_column;
//                    continue; // Skip the rest of this iteration and go to the next
//                } else if (next_row>current_row && next_column == current_column) {
//                    // Turn right
//                    stepCount++;
//                    position++;
//                    movementArray[position].distance = stepCount * CM_PER_BLOCK_HORIZ;
//                    movementArray[position].turnDirection = 'R';
//                    current_row = next_row; // Update coordinates
//                    current_column = next_column;
//                    stepCount = 0;
//                    current_direction = SOUTH;   
//                } else if (next_row<current_row && next_column == current_column) {
//                    // Turn left
//                    stepCount++;
//                    position++;
//                    movementArray[position].distance = stepCount * CM_PER_BLOCK_HORIZ;
//                    movementArray[position].turnDirection = 'L';
//                    current_row = next_row; // Update coordinates
//                    current_column = next_column;
//                    stepCount = 0;
//                    current_direction = NORTH;
//                }
//                break;
//
//            case SOUTH:
//                if (next_row>current_row && next_column == current_column) { 
//                    // Go straight
//                    stepCount++;
//                    current_row = next_row; // Update coordinates
//                    current_column = next_column;
//                    continue; 
//                } else if (next_row==current_row && next_column < current_column) {
//                    // Turn right
//                    stepCount++;
//                    position++;
//                    movementArray[position].distance = stepCount * CM_PER_BLOCK_VERT ;
//                    movementArray[position].turnDirection = 'R';
//                    current_row = next_row; // Update coordinates
//                    current_column = next_column;
//                    stepCount = 0;
//                    current_direction = WEST;
//                } else if (next_row==current_row && next_column > current_column) {
//                    // Turn left
//                    stepCount++;
//                    position++;
//                    movementArray[position].distance = stepCount * CM_PER_BLOCK_VERT ;
//                    movementArray[position].turnDirection = 'L';
//                    current_row = next_row; // Update coordinates
//                    current_column = next_column;
//                    stepCount = 0;
//                    current_direction = EAST;
//                }
//                break;
//                
//                
//            case WEST:
//                if (next_row==current_row && next_column < current_column) { 
//                    // Go straight
//                    stepCount++;
//                    current_row = next_row; // Update coordinates
//                    current_column = next_column;
//                    continue; 
//                } else if (next_row<current_row && next_column == current_column) {
//                    // Turn right
//                    stepCount++;
//                    position++;
//                    movementArray[position].distance = stepCount * CM_PER_BLOCK_HORIZ;
//                    movementArray[position].turnDirection = 'R';
//                    current_row = next_row; // Update coordinates
//                    current_column = next_column;
//                    stepCount = 0;
//                    current_direction = NORTH;
//                } else if (next_row>current_row && next_column == current_column) {
//                    // Turn left
//                    stepCount++;
//                    position++;
//                    movementArray[position].distance = stepCount * CM_PER_BLOCK_HORIZ;
//                    movementArray[position].turnDirection = 'L';
//                    current_row = next_row; // Update coordinates
//                    current_column = next_column;
//                    stepCount = 0;
//                    current_direction = SOUTH;
//                }
//                break;
//        }
//    }
//}