COMP		:=	c++
FLAFS		:=	-Wall -Wextra -Werror -std=++98

SRCS		:=	main.cpp 				\
				AuxiliarFunctions.cpp	\
				Contact.cpp				\
				Interface.cpp			\
				PhoneBook.cpp

OBJS		:=	$(SRCS:.cpp=.o)

TARGET		:=	a.out

all: $(TARGET)

$(TARGET): $(OBJS)
	$(COMP) $(FLAGS) -o $(TARGET) $(OBJS)

%.o: %.cpp Contact.hpp PhoneBook.hpp GlobalHeaders.hpp
	$(COMP) $(FLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)

fclean: clean
	rm -f $(TARGET)

re: fclean all

-PHONY: all clean re