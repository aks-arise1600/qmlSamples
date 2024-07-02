cmake_minimum_required(VERSION 3.18)

project(qmlSamples
  VERSION
    1.0
  DESCRIPTION
    "Qt QML Examples"
  LANGUAGES
    CXX
)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

if(CMAKE_VERSION VERSION_LESS "3.20.0")
    set(CMAKE_INCLUDE_CURRENT_DIR ON)
endif()

find_package(Qt5 COMPONENTS Widgets REQUIRED)
find_package(Qt5Charts REQUIRED)
find_package(Qt5 COMPONENTS Core Quick Sql Charts Multimedia REQUIRED)

set(SRC_FILES
		main.cpp 
		)

#set(HEADER_FILES
#		)
		
		
set(QRC_FILES
		icons.qrc
    		qml.qrc
		)

add_executable(${PROJECT_NAME} ${SRC_FILES} ${QRC_FILES})

add_definitions(-DQT_NO_VERSION_TAGGING)

target_link_libraries(${PROJECT_NAME} Qt5::Widgets Qt5::Gui Qt5::Quick Qt5::Charts)


qt5_use_modules(${PROJECT_NAME} Core Sql Xml Charts Quick Multimedia)

include_directories(.)
