#include <iostream>
#include <math.h>
#include <vector>
#include <map>
#include <algorithm>

using namespace std;

struct EF_Point {
    int x, y;
};

struct EF_line {
    EF_Point p1, p2;
};

class My_Area_Check {
    public:
        My_Area_Check();
        bool onLine(EF_line l1, EF_Point p);
        int direction(EF_Point a, EF_Point b, EF_Point c);
        bool isIntersect(EF_line l1, EF_line l2);
        bool ROI_check(vector<float> coordinate, float check_point[]);
        int One_Pass_Check(vector<float> coordinate, float left_x, float left_y, float right_x, float right_y);

    private:

};