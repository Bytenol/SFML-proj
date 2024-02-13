#ifndef __BYTENOL__PHY__WINDOW__H__
#define __BYTENOL__PHY__WINDOW__H__

#include <SFML/Graphics.hpp>
#include <string>


namespace phy {

    class Window: sf::RenderWindow
    {
        public:
            Window(float width = 450, float height = 600, std::string title = "Untitled");
            virtual void onUserUpdate(const float& dt) = 0;
            virtual void onUserDraw() = 0;
            virtual void onUserEvent(sf::Event& evt);
            void start();

        private:
            sf::Event evt;
    };
    
}

#endif 