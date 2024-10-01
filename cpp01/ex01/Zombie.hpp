#ifndef ZOMBIE_HPP
#define ZOMBIE_HPP

# include <iostream>
# include <string>

class Zombie {
private:
    std::string name;

public:
    Zombie();
    
    Zombie(std::string zombieName);

    ~Zombie();

    void setName(std::string &name);

    std::string getName() const;
};

Zombie* zombieHorde(int N, std::string name);

#endif