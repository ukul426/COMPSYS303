/* ========================================
 *
 * Copyright YOUR COMPANY, THE YEAR
 * All Rights Reserved
 * UNPUBLISHED, LICENSED SOFTWARE.
 *
 * CONFIDENTIAL AND PROPRIETARY INFORMATION
 * WHICH IS THE PROPERTY OF your company.
 *
 * ========================================
*/


#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <project.h>
#include <stdbool.h>
#include <math.h>
#include <cytypes.h> 
    
#define MAP_ROWS 15
#define MAP_COLS 19
#define MAX_PATH_LENGTH 25

#define PWM_PERIOD 100
#define PWM_STRAIGHT_L 131
#define PWM_STRAIGHT_R 130
#define PWM_STOP 100
#define ENC_VALUE_PER_CM 10.5
#define CM_PER_BLOCK_VERT 5
#define CM_PER_BLOCK_HORIZ 9
    


typedef struct Node {
    int x, y;           // Position
    double g, h;        // Cost from start, heuristic cost
    struct Node* parent; // Parent node
} Node;

typedef struct Movement {
    int distance;       // Distance to go straight in centimeters
    char turnDirection; // 'L' for left, 'R' for right, 'N' for no turn
} Movement;

typedef enum {
    NORTH,
    EAST,
    SOUTH,
    WEST
} RobotDirection;

// Define states for the state machine
typedef enum {
    GO_STRAIGHT,
    TURN_LEFT,
    TURN_RIGHT,
    STOP
} RobotState;

extern Movement movementArray[10];

//Movement movementArray[10]={
//    {15,'L'},
//    {18,'R'},
//    {10,'R'},
//    {18,'L'},
//    {15,'E'},
//    
//};

void getMovementArray(int startX,int startY,int targetX,int targetY,RobotDirection current_direction);

// Function prototypes
Node* AStar(int startX, int startY, int targetX, int targetY);
void getPath(Node* endNode);
double heuristic(int x1, int y1, int x2, int y2);
bool isValid(int x, int y);

