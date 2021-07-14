#include <iostream>
#include <math.h>
#include <vector>
#include <map>
#include <algorithm>
#include "my_area_check.h"

int main() {

   My_Area_Check area_check;
   vector<float> f_vec = {100.0, 100.0, 100.0, 550.0, 550.0, 550.0, 550.0, 100.0};

   float check_point[] = {120.0, 120.0};
   area_check.ROI_check(f_vec, check_point);

   int normal = area_check.One_Pass_Check(f_vec, 30.0, 30.0, 60.0, 30.0);
   int alert = area_check.One_Pass_Check(f_vec, 200.0, 200.0, 60.0, 30.0);
   int danger = area_check.One_Pass_Check(f_vec, 200.0, 200.0, 300.0, 300.0);

   cout << "normal : " << normal << endl;
   cout << "alert  : " << alert << endl;
   cout << "danger : " << danger << endl;
   
   return 1;
}