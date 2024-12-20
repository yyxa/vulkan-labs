cmake_minimum_required(VERSION 3.14)
set(CMAKE_CXX_STANDARD 17)

message("${CMAKE_CXX_COMPILER}")

project(vulkan)

include(FetchContent)

FetchContent_Declare(
  glm
  GIT_REPOSITORY  https://github.com/g-truc/glm.git
  GIT_TAG       1.0.1 
)

FetchContent_Declare(
  glfw
  GIT_REPOSITORY  https://github.com/glfw/glfw.git
  GIT_TAG       3.4
)

FetchContent_MakeAvailable(glm)
FetchContent_MakeAvailable(glfw)


find_package(Vulkan REQUIRED)

add_executable(main main.cpp)
target_link_libraries(main PUBLIC glm::glm glfw vulkan)
