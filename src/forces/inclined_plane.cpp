#include <SFML/Graphics.hpp>
#include <iostream>
#include <phy/window.h>


using namespace phy;


struct App: Window {

    void onUserUpdate(const float& dt) {

    }

    void onUserDraw() {

    }

};


int main(int argc, char const *argv[])
{
    App inclined_plane;
    inclined_plane.start();
    std::cout << "Inclined plane right now";
    return 0;
}
