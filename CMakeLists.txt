# cmake 하기 위한 최소 버전
cmake_minimum_required(VERSION 3.5.1)

# project 명
project(alert)

# error: use of 'auto' in lambda parameter declaration only available 
# with '-std=c++14' or '-std=gnu++14'
# 위와 같은 에러가 나왔을 때 c++11, c++14 등으로 변경해주면 고칠 수 있음 
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -Wall")

# bin폴더에 실행파일 저장
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)

# 자주사용하는 opencv 라이브러리 설정
# 빌드 시 에러나면 /usr/include 안에 없는 것
# Try to find OpenCV
find_package(OpenCV REQUIRED)
if (OpenCV_FOUND)
    message(STATUS "OpenCV library status:")
    message(STATUS "    version: ${OpenCV_VERSION}")
    message(STATUS "    include path: ${OpenCV_INCLUDE_DIRS}")
else ()
    message(FATAL_ERROR "Could not locate OpenCV")
endif()

# header 파일 위치
include_directories(${PROJECT_SOURCE_DIR}/include)

# src 폴더 안에 모든 cpp 컴파일
file(GLOB SOURCE_FILES src/*.cpp)

# cmake 하는 부분
add_executable(${CMAKE_PROJECT_NAME} ${SOURCE_FILES})

# 라이브러리 link
target_link_libraries (
        ${CMAKE_PROJECT_NAME}
        ${OpenCV_LIBS}
)