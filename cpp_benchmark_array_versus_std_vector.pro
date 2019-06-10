# Project files
SOURCES += main.cpp

# Compile at high warning levels, a warning is an error
# Cannot use -Weffc++ as the original code will not compile then
QMAKE_CXXFLAGS += -Wall -Wextra -Werror

# C++14
QMAKE_CXXFLAGS += -std=c++14
CONFIG += c++14

# Debug and release mode
CONFIG += console debug_and_release
CONFIG(release, debug|release) {
  DEFINES += NDEBUG
}
