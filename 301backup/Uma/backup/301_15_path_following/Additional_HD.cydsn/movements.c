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
//#include "program.h"
//int pathCoordinates[15][2] = {
//    {2, 2},
//    {3, 2},
//    {4, 2},
//    {4, 3},
//    {4, 4},
//    {3, 4},
//    {2, 4},
//    {2, 5},
//    {2, 6},
//    {2, 7},
//    {2, 8},
//    {2, 9},
//    {2, 10},
//    {3, 10},
//    {4, 10},
// 
////};
//void getMovementArray(int startX,int startY,int targetX,int targetY,RobotDirection current_direction) {//MAX_PATH_LENGTH  int pathCoordinates[11][2]
//    int pathLength = 20; 
//    int stepCount = 0;
//    int position = -1;
//    
//    int currentX=startX;
//    int currentY=startY;
//
//    for (int i = 0; i < pathLength; i++) {
//        int nextX = pathCoordinates[i][0];
//        int nextY = pathCoordinates[i][1];
//
//        // Calculate the change in position
//        int deltaX = nextX - currentX;
//        int deltaY = nextY - currentY;
//
//
//        if(nextX == targetX && nextY == targetY ){
//                    stepCount++;
//                    position++;
//                    movementArray[position].distance = stepCount;
//                    movementArray[position].turnDirection = 'E';
//                    break;
//        }
//        
//
//        switch (current_direction) {
//            case NORTH:
//                if (currentX > nextX && currentY == nextY) { 
//                    // Go straight
//                    stepCount++;
//                    currentX = nextX; // Update currentX
//                    currentY = nextY;
//                    continue; 
//                } else if (deltaX == 0 && deltaY > 0) {
//                    // Turn right
//                    stepCount++;
//                    position++;
//                    movementArray[position].distance = stepCount * CM_PER_BLOCK_VERT ;
//                    movementArray[position].turnDirection = 'R';
//                    currentX = nextX; // Update currentX
//                    currentY = nextY;
//                    stepCount = 0;
//                    current_direction = EAST;
//                } else if (deltaX == 0 && deltaY < 0) {
//                    // Turn left
//                    stepCount++;
//                    position++;
//                    movementArray[position].distance = stepCount * CM_PER_BLOCK_VERT ;
//                    movementArray[position].turnDirection = 'L';
//                    currentX = nextX; // Update currentX
//                    currentY = nextY;
//                    stepCount = 0;
//                    current_direction = WEST;
//                }
//                break;
//                
//                
//            case EAST:
//                if (deltaX == 0 && deltaY > 0) { 
//                    // Go straight
//                    stepCount++;
//                    currentX = nextX; // Update currentX
//                    currentY = nextY;
//                    continue; // Skip the rest of this iteration and go to the next
//                } else if (deltaX > 0 && deltaY == 0) {
//                    // Turn right
//                    stepCount++;
//                    position++;
//                    movementArray[position].distance = stepCount * CM_PER_BLOCK_HORIZ;
//                    movementArray[position].turnDirection = 'R';
//                    currentX = nextX; // Update currentX
//                    currentY = nextY;
//                    stepCount = 0;
//                    current_direction = SOUTH;   
//                } else if (deltaX < 0 && deltaY == 0) {
//                    // Turn left
//                    stepCount++;
//                    position++;
//                    movementArray[position].distance = stepCount * CM_PER_BLOCK_HORIZ;
//                    movementArray[position].turnDirection = 'L';
//                    currentX = nextX; // Update currentX
//                    currentY = nextY;
//                    stepCount = 0;
//                    current_direction = NORTH;
//                }
//                break;
//
//            case SOUTH:
//                if (deltaX > 0 && deltaY == 0) { 
//                    // Go straight
//                    stepCount++;
//                    currentX = nextX; // Update currentX
//                    currentY = nextY;
//                    continue; 
//                } else if (deltaX == 0 && deltaY < 0) {
//                    // Turn right
//                    stepCount++;
//                    position++;
//                    movementArray[position].distance = stepCount * CM_PER_BLOCK_VERT ;
//                    movementArray[position].turnDirection = 'R';
//                    currentX = nextX; // Update currentX
//                    currentY = nextY;
//                    stepCount = 0;
//                    current_direction = WEST;
//                } else if (deltaX == 0 && deltaY > 0) {
//                    // Turn left
//                    stepCount++;
//                    position++;
//                    movementArray[position].distance = stepCount * CM_PER_BLOCK_VERT ;
//                    movementArray[position].turnDirection = 'L';
//                    currentX = nextX; // Update currentX
//                    currentY = nextY;
//                    stepCount = 0;
//                    current_direction = EAST;
//                }
//                break;
//                
//                
//            case WEST:
//                if (deltaX == 0 && deltaY < 0) { 
//                    // Go straight
//                    stepCount++;
//                    currentX = nextX; // Update currentX
//                    currentY = nextY;
//                    continue; 
//                } else if (deltaX < 0 && deltaY == 0) {
//                    // Turn right
//                    stepCount++;
//                    position++;
//                    movementArray[position].distance = stepCount * CM_PER_BLOCK_HORIZ;
//                    movementArray[position].turnDirection = 'R';
//                    currentX = nextX; // Update currentX
//                    currentY = nextY;
//                    stepCount = 0;
//                    current_direction = NORTH;
//                } else if (deltaX > 0 && deltaY == 0) {
//                    // Turn left
//                    stepCount++;
//                    position++;
//                    movementArray[position].distance = stepCount * CM_PER_BLOCK_HORIZ;
//                    movementArray[position].turnDirection = 'L';
//                    currentX = nextX; // Update currentX
//                    currentY = nextY;
//                    stepCount = 0;
//                    current_direction = SOUTH;
//                }
//                break;
//        }
//    }
//}
/* [] END OF FILE */
