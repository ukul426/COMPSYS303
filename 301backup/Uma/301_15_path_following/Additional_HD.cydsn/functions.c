
#include "program.h"


// Create a 2D array to store the path coordinate
int pathCoordinates[MAX_PATH_LENGTH][2];
int pathLength=0;


void getMovementArray(int startX,int startY,int targetX,int targetY,RobotDirection current_direction) {//MAX_PATH_LENGTH  int pathCoordinates[11][2]



    int pathLength = 20; 
    int stepCount = 0;
    int position = -1;
    
    int currentX=startX;
    int currentY=startY;

    for (int i = 0; i < pathLength; i++) {
        int nextX = pathCoordinates[i][0];
        int nextY = pathCoordinates[i][1];

        // Calculate the change in position
        int deltaX = nextX - currentX;
        int deltaY = nextY - currentY;


        if(nextX == targetX && nextY == targetY ){
                    stepCount++;
                    position++;
                    movementArray[position].distance = stepCount;
                    movementArray[position].turnDirection = 'E';
                    printf("STOP  %d  %c  \n", stepCount, movementArray[position].turnDirection);                     
                    break;
        }
        

        switch (current_direction) {
            case NORTH:
                if (currentX > nextX && currentY == nextY) { 
                    // Go straight
                    stepCount++;
                    currentX = nextX; // Update currentX
                    currentY = nextY;
                    continue; 
                } else if (deltaX == 0 && deltaY > 0) {
                    // Turn right
                    stepCount++;
                    position++;
                    movementArray[position].distance = stepCount * CM_PER_BLOCK_VERT ;
                    movementArray[position].turnDirection = 'R';
                    printf("NORTH  %d  %c  \n", stepCount, movementArray[position].turnDirection);                    
                    currentX = nextX; // Update currentX
                    currentY = nextY;
                    stepCount = 0;
                    current_direction = EAST;
                } else if (deltaX == 0 && deltaY < 0) {
                    // Turn left
                    stepCount++;
                    position++;
                    movementArray[position].distance = stepCount * CM_PER_BLOCK_VERT ;
                    movementArray[position].turnDirection = 'L';
                    printf("NORTH%d  %c  \n", stepCount, movementArray[position].turnDirection);                     
                    currentX = nextX; // Update currentX
                    currentY = nextY;
                    stepCount = 0;
                    current_direction = WEST;
                }
                break;
                
                
            case EAST:
                if (deltaX == 0 && deltaY > 0) { 
                    // Go straight
                    stepCount++;
                    currentX = nextX; // Update currentX
                    currentY = nextY;
                    continue; // Skip the rest of this iteration and go to the next
                } else if (deltaX > 0 && deltaY == 0) {
                    // Turn right
                    stepCount++;
                    position++;
                    movementArray[position].distance = stepCount * CM_PER_BLOCK_HORIZ;
                    movementArray[position].turnDirection = 'R';
                    printf("EAST %d  %c  \n", stepCount, movementArray[position].turnDirection);                    
                    currentX = nextX; // Update currentX
                    currentY = nextY;
                    stepCount = 0;
                    current_direction = SOUTH;   
                } else if (deltaX < 0 && deltaY == 0) {
                    // Turn left
                    stepCount++;
                    position++;
                    movementArray[position].distance = stepCount * CM_PER_BLOCK_HORIZ;
                    movementArray[position].turnDirection = 'L';
                    printf("EAST %d  %c  \n", stepCount, movementArray[position].turnDirection);                    
                    currentX = nextX; // Update currentX
                    currentY = nextY;
                    stepCount = 0;
                    current_direction = NORTH;
                }
                break;

            case SOUTH:

                if (deltaX > 0 && deltaY == 0) { 
                    // Go straight
                    stepCount++;
                    currentX = nextX; // Update currentX
                    currentY = nextY;
                    continue; 
                } else if (deltaX == 0 && deltaY < 0) {
                    // Turn right
                    stepCount++;
                    position++;
                    movementArray[position].distance = stepCount * CM_PER_BLOCK_VERT ;
                    movementArray[position].turnDirection = 'R';
                    printf("SOUTH %d  %c  \n", stepCount, movementArray[position].turnDirection);
                    currentX = nextX; // Update currentX
                    currentY = nextY;
                    stepCount = 0;
                    current_direction = WEST;
                } else if (deltaX == 0 && deltaY > 0) {
                    // Turn left
                    stepCount++;
                    position++;
                    movementArray[position].distance = stepCount * CM_PER_BLOCK_VERT ;
                    movementArray[position].turnDirection = 'L';
                                        printf("SOUTH %d  %c  \n", stepCount, movementArray[position].turnDirection);

                    currentX = nextX; // Update currentX
                    currentY = nextY;
                    stepCount = 0;
                    current_direction = EAST;
                }
                break;
                
                
            case WEST:
                if (deltaX == 0 && deltaY < 0) { 
                    // Go straight
                    stepCount++;
                    currentX = nextX; // Update currentX
                    currentY = nextY;
                    continue; 
                } else if (deltaX < 0 && deltaY == 0) {
                    // Turn right
                    stepCount++;
                    position++;
                    movementArray[position].distance = stepCount * CM_PER_BLOCK_HORIZ;
                    movementArray[position].turnDirection = 'R';
                    printf("WEST %d  %c  \n", stepCount, movementArray[position].turnDirection);
                    
                    currentX = nextX; // Update currentX
                    currentY = nextY;
                    stepCount = 0;
                    current_direction = NORTH;
                } else if (deltaX > 0 && deltaY == 0) {
                    // Turn left
                    stepCount++;
                    position++;
                    movementArray[position].distance = stepCount * CM_PER_BLOCK_HORIZ;
                    movementArray[position].turnDirection = 'L';
                    printf("WEST %d  %c  \n", stepCount, movementArray[position].turnDirection);                    
                    currentX = nextX; // Update currentX
                    currentY = nextY;
                    stepCount = 0;
                    current_direction = SOUTH;
                }
                break;
        }
    }
}


// Define a 2D grid map with '0' for open spaces and '1' for obstacles
//map2
int map[15][19] = {
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

// Function to calculate Manhattan distance heuristic
double heuristic(int x1, int y1, int x2, int y2) {
    return (abs(x1 - x2) + abs(y1 - y2));
}


// Function to check if a position is valid
bool isValid(int x, int y) {
    return x >= 0 && x < MAP_ROWS && y >= 0 && y < MAP_COLS && map[x][y] == 0;
}

// A* algorithm
Node* AStar(int startX, int startY, int targetX, int targetY) {
    
    // Initialize open and closed sets
    Node* openSet[MAP_ROWS * MAP_COLS] = {NULL};
    Node* closedSet[MAP_ROWS][MAP_COLS] = {NULL};
    
   
    // Create the start node
    Node startNode = {startX, startY, 0.0, heuristic(startX, startY, targetX, targetY),NULL};
    openSet[0] = &startNode;

    // Main loop
    while (openSet[0] != NULL) {
        // Find the node with the lowest f = g + h
        Node* current = openSet[0];
        int currentIndex = 0;

        for (int i = 1; openSet[i] != NULL; i++) {
            //organise in weights order
            if (openSet[i]->g + openSet[i]->h < current->g + current->h) {
                current = openSet[i];
                currentIndex = i;
            }
        }

        // Remove current node from open set
        openSet[currentIndex] = NULL;

        // Check if we reached the target
        if (current->x == targetX && current->y == targetY) {
            return current; // Path found
        }

        // Generate neighbor nodes
        int dx[] = {-1, 1, 0, 0};
        int dy[] = {0, 0, -1, 1};

        for (int i = 0; i < 4; i++) {
            int newX = current->x + dx[i];
            int newY = current->y + dy[i];

            if (isValid(newX, newY)) {
                double tentativeG = current->g + 1.0; // Assuming cost to move from one cell to another is 1

                // Check if the neighbor is in the closed set
                if (closedSet[newX][newY] != NULL && tentativeG >= closedSet[newX][newY]->g) {
                    continue; // Skip this neighbor
                }

                // Check if the neighbor is in the open set or if it's a better path
                bool inOpenSet = false;
                for (int j = 0; openSet[j] != NULL; j++) {
                    if (openSet[j]->x == newX && openSet[j]->y == newY) {
                        inOpenSet = true;
                        if (tentativeG < openSet[j]->g) {
                            openSet[j]->g = tentativeG;
                            openSet[j]->parent = current;
                        }
                        break;
                    }
                }

                if (!inOpenSet) {
                    // Add neighbor to the open set
                    Node* neighbor = (Node*)malloc(sizeof(Node));
                    neighbor->x = newX;
                    neighbor->y = newY;
                    neighbor->g = tentativeG;
                    neighbor->h = heuristic(newX, newY, targetX, targetY);
                    neighbor->parent = current;

                    // Find the position to insert the neighbor in the open set to maintain order
                    int insertIndex = 0;
                    while (openSet[insertIndex] != NULL && openSet[insertIndex]->g + openSet[insertIndex]->h < neighbor->g + neighbor->h) {
                        insertIndex++;
                    }

                    // Shift elements to make space for the new neighbor
                    for (int j = MAP_ROWS * MAP_COLS - 1; j > insertIndex; j--) {
                        openSet[j] = openSet[j - 1];
                    }

                    openSet[insertIndex] = neighbor;
                }
            }
        }

        // Add current node to the closed set
        closedSet[current->x][current->y] = current;
    }

    return NULL; // No path found
}


// Function to print the path
void getPath(Node* endNode) {
    if (endNode == NULL) {
        printf("No path found.\n");
        return;
    }

    Node* current = endNode;
    int i = 0;

    // Store the path in a temporary array
    int tempPath[MAX_PATH_LENGTH][2];

    while (current != NULL) {
        tempPath[i][0] = current->x;
        tempPath[i][1] = current->y;
        i++;
        current = current->parent;
    }

    // Reverse the path and store it in pathCoordinates
    for (int j = i - 1, k = 0; j >= 0; j--, k++) {
        pathCoordinates[k][0] = tempPath[j][0];
        pathCoordinates[k][1] = tempPath[j][1];
    }

    // pathLength = i; // Update the path length
}




















int main() {
    int startX = 1, startY = 1;
    int targetX = 1, targetY = 12;
    RobotDirection current_direction = SOUTH;
    Node* endNode = AStar(startX, startY, targetX, targetY);

    // store the path in path coordinates
    getPath(endNode);
    int i=0;
    while (i<30) {
        printf("(%d, %d) ", pathCoordinates[i][0],pathCoordinates[i][1]);
        i++;
    }

    printf("\n \n Hello \n \n");
    
     getMovementArray(startX,startY,targetX,targetY, current_direction);
    
    
    
    return 0;
}
