#include <phy/window.h>


namespace phy 
{

    Window::Window(float width, float height, std::string title): sf::RenderWindow(sf::VideoMode({ width, height }), title) {

    }

    void Window::onUserEvent(sf::Event& evt) {
        if(evt.type == sf::Event::Closed) {
            close();
        }
    }

    void Window::start() {

        while (isOpen()) {
        
            // listen to events
            while(pollEvent(evt)) onUserEvent(evt);
            onUserUpdate(1 / 60.0f);
            clear(sf::Color::Black);
            onUserDraw();
            display();
        }
        
    }


}