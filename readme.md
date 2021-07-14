
# 사용방법
```
// area class 선언
My_Area_Check area_check;

// vector 안에 사각형 (x1, y1, x2, y2, x3, y3, x4, y4) 영역 좌표
vector<float> f_vec = {100.0, 100.0, 100.0, 550.0, 550.0, 550.0, 550.0, 100.0};

```
<br/>

## 좌표 하나 검사 예시
- 0 : 좌표 area OUT 
- 1 : 좌표 area IN 
```
float check_point[] = {120.0, 120.0};
area_check.ROI_check(f_vec, check_point);
```
<br/>

## 좌표 둘 검사 예시
- 0 : 두 좌표 모두 area OUT 
- 1 : 두 좌표 중 최소 하나는 area IN 
- 2 : 두 좌표 모두 area IN
```
// 두 점 검사 예시
int normal = area_check.One_Pass_Check(f_vec, 30.0, 30.0, 60.0, 30.0);
```