INC_DIR=./include
BIN_DIR=./bin
SRC_DIR=./src
OBJ_DIR=./obj

SRC=${wildcard ${SRC_DIR}/*.cpp}
OBJ=${patsubst %.cpp, $(OBJ_DIR)/%.o, ${notdir ${SRC}}}

#用于查看变量的值
#test:
#   echo $(SRC)
#   echo $(OBJ)

TARGET=test.exe
BIN_TARGET=${BIN_DIR}/${TARGET}

CC=clang++
CFLAGS= -g -Wall --target=x86_64-w64-mingw

all: ${BIN_TARGET} clean

${BIN_TARGET}: ${OBJ}
	${CC} ${CFLAGS} ${OBJ} -o $@

${OBJ_DIR}/%.o: ${SRC_DIR}/%.cpp
	${CC} ${CFLAGS} -I${INC_DIR} -c $< -o $@

clean:
	rm -rf ${OBJ_DIR}/*.o
