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
#include <stdbool.h>
#include <math.h>
#include "Astar.h"
#define CM_PER_BLOCK_VERT 6
#define CM_PER_BLOCK_HORIZ 10


typedef enum {
    NORTH,
    EAST,
    SOUTH,
    WEST
} RobotDirection;

struct Movement {
    int distance;
    char turnDirection;
};


RobotDirection current_direction =  EAST;
int target[] = {9, 6};
int position = -1;
struct Movement moveCountArray[10];

int currentX = 2;
int currentY = 2;
int stepCount = 0;
int pathCoordinates[11][2] = {
    {2, 2},
    {3, 2},
    {4, 2},
    {4, 3},
    {4, 4},
    {3, 4},
    {2, 4},
    {2, 5},
    {2, 6},
    {2, 7},
    {2, 8}
};
void direction() {//MAX_PATH_LENGTH  int pathCoordinates[11][2]
    int pathLength = 11; 

    for (int i = 0; i < pathLength; i++) {
        int nextX = pathCoordinates[i][0];
        int nextY = pathCoordinates[i][1];

        // Calculate the change in position
        int deltaX = nextX - currentX;
        int deltaY = nextY - currentY;
        
        int targetX = target[0]; // Access the x-coordinat
        int targetY = target[1]; // Access the y-coordinate


        if(nextX == targetX && nextY == targetY ){
                    stepCount++;
                    moveCountArray[position].distance = stepCount;
                    moveCountArray [position].turnDirection = 'E';
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
                    moveCountArray[position].distance = stepCount * CM_PER_BLOCK_VERT ;
                    moveCountArray [position].turnDirection = 'R';
                    currentX = nextX; // Update currentX
                    currentY = nextY;
                    stepCount = 0;
                    current_direction = EAST;
                } else if (deltaX == 0 && deltaY < 0) {
                    // Turn left
                    stepCount++;
                    position++;
                    moveCountArray[position].distance = stepCount * CM_PER_BLOCK_VERT ;
                    moveCountArray [position].turnDirection = 'L';
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
                    moveCountArray[position].distance = stepCount * CM_PER_BLOCK_HORIZ;
                    moveCountArray [position].turnDirection = 'R';
                    currentX = nextX; // Update currentX
                    currentY = nextY;
                    stepCount = 0;
                    current_direction = SOUTH;   
                } else if (deltaX < 0 && deltaY == 0) {
                    // Turn left
                    stepCount++;
                    position++;
                    moveCountArray[position].distance = stepCount * CM_PER_BLOCK_HORIZ;
                    moveCountArray [position].turnDirection = 'L';
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
                    moveCountArray[position].distance = stepCount * CM_PER_BLOCK_VERT ;
                    moveCountArray [position].turnDirection = 'R';
                    currentX = nextX; // Update currentX
                    currentY = nextY;
                    stepCount = 0;
                    current_direction = WEST;
                } else if (deltaX == 0 && deltaY > 0) {
                    // Turn left
                    stepCount++;
                    position++;
                    moveCountArray[position].distance = stepCount * CM_PER_BLOCK_VERT ;
                    moveCountArray [position].turnDirection = 'L';
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
                    moveCountArray[position].distance = stepCount * CM_PER_BLOCK_HORIZ;
                    moveCountArray [position].turnDirection = 'R';
                    currentX = nextX; // Update currentX
                    currentY = nextY;
                    stepCount = 0;
                    current_direction = NORTH;
                } else if (deltaX > 0 && deltaY == 0) {
                    // Turn left
                    stepCount++;
                    position++;
                    moveCountArray[position].distance = stepCount * CM_PER_BLOCK_HORIZ;
                    moveCountArray [position].turnDirection = 'L';
                    currentX = nextX; // Update currentX
                    currentY = nextY;
                    stepCount = 0;
                    current_direction = SOUTH;
                }
                break;
        }
    }
}


/* [] END OF FILE */
