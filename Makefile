# Компілятор та прапори
CXX      = g++
CXXFLAGS = -Wall -Wextra -std=c++11
AR       = ar

# Імена результатів збірки
LIB      = libcalculator.a
TARGET   = calc

# Списки файлів
LIB_OBJS = calculator.o
MAIN_OBJ = main.o

# Ціль за замовчуванням: бібліотека + виконуваний файл
all: $(LIB) $(TARGET)

# Статична бібліотека з calculator.o
$(LIB): $(LIB_OBJS)
	$(AR) rcs $@ $^

# Виконуваний файл: main.o + бібліотека
$(TARGET): $(MAIN_OBJ) $(LIB)
	$(CXX) $(MAIN_OBJ) -L. -lcalculator -o $@

# Правило компіляції .cpp -> .o (залежить також від заголовка)
%.o: %.cpp calculator.h
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Очищення результатів збірки
clean:
	rm -f *.o $(LIB) $(TARGET)

.PHONY: all clean
