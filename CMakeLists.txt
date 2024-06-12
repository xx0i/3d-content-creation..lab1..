cmake_minimum_required(VERSION 3.2)

set(PROJECT_NAME Vulkan_Lab_One)
project(${PROJECT_NAME})

set_property(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} 
	PROPERTY VS_STARTUP_PROJECT ${PROJECT_NAME})

ADD_DEFINITIONS(-DUNICODE)
ADD_DEFINITIONS(-D_UNICODE)

file(GLOB SOURCE_FILES CONFIGURE_DEPENDS ./*.h ./*.cpp)

add_executable (${PROJECT_NAME} ${SOURCE_FILES})

add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD
    COMMAND git add --all || true
	COMMAND git commit -a -m "auto commit" || true
	COMMAND git push
	WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
	VERBATIM USES_TERMINAL
)

