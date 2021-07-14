#include "my_area_check.h"

using namespace std;

My_Area_Check::My_Area_Check(){
    cout << "init" << endl;
}

bool My_Area_Check::onLine(EF_line l1, EF_Point p) {        //check whether p is on the line or not
   if(p.x <= std::max(l1.p1.x, l1.p2.x) && p.x <= std::min(l1.p1.x, l1.p2.x) &&
      (p.y <= std::max(l1.p1.y, l1.p2.y) && p.y <= std::min(l1.p1.y, l1.p2.y)))
         return true;

   return false;
}

int My_Area_Check::direction(EF_Point a, EF_Point b, EF_Point c) {
    int val = (b.y-a.y)*(c.x-b.x)-(b.x-a.x)*(c.y-b.y);
    if (val == 0)
      return 0;           //colinear
    else if(val < 0)
      return 2;          //anti-clockwise direction
    else
      return 1;          //clockwise direction
}

bool My_Area_Check::isIntersect(EF_line l1, EF_line l2) {
   //four direction for two lines and EF_points of other line
   int dir1 = direction(l1.p1, l1.p2, l2.p1);
   int dir2 = direction(l1.p1, l1.p2, l2.p2);
   int dir3 = direction(l2.p1, l2.p2, l1.p1);
   int dir4 = direction(l2.p1, l2.p2, l1.p2);

   if(dir1 != dir2 && dir3 != dir4)
      return true;           //they are intersecting
   if(dir1==0 && onLine(l1, l2.p1))        //when p2 of line2 are on the line1
      return true;
   if(dir2==0 && onLine(l1, l2.p2))         //when p1 of line2 are on the line1
      return true;
   if(dir3==0 && onLine(l2, l1.p1))       //when p2 of line1 are on the line2
      return true;
   if(dir4==0 && onLine(l2, l1.p2)) //when p1 of line1 are on the line2
      return true;
   return false;
}

bool My_Area_Check::ROI_check(vector<float> coordinate, float check_point[]) {

    int x1,x2,x3,x4,y1,y2,y3,y4;

    x1 = coordinate[0];
    x2 = coordinate[2];
    x3 = coordinate[4];
    x4 = coordinate[6];
    y1 = coordinate[1];
    y2 = coordinate[3];
    y3 = coordinate[5];
    y4 = coordinate[7];

    EF_Point polygon[] = {{x1,y1},{x2,y2},{x3,y3},{x4,y4}};
    int n = coordinate.size()/2;

    int check_point_x = check_point[0];
    int check_point_y = check_point[1];

    EF_Point p = {check_point_x, check_point_y};

   if(n < 3)
      return false;                  //when polygon has less than 3 edge, it is not polygon
   EF_line exline = {p, {9999, p.y}};   //create a EF_point at infinity, y is same as EF_point p
   int count = 0;
   int i = 0;
   do {
      EF_line side = {polygon[i], polygon[(i+1)%n]};     //forming a line from two consecutive EF_points of poly
      if(isIntersect(side, exline)) {          //if side is intersects exline
         if(direction(side.p1, p, side.p2) == 0)
            return onLine(side, p);
         count++;
      }
      i = (i+1)%n;
   } while(i != 0);
      return count&1;             //when count is odd
}

int My_Area_Check::One_Pass_Check(vector<float> coordinate, float left_x, float left_y, float right_x, float right_y) {
    bool left_alert, right_alert;
    float check_point_left[] = {left_x, left_y};
    float check_point_right[] = {right_x, right_y};

    left_alert = ROI_check(coordinate, check_point_left);
    right_alert = ROI_check(coordinate, check_point_right);

    if (left_alert == true && right_alert == true) return 2;
    else if (left_alert == true || right_alert == true) return 1;
    else return 0;
}