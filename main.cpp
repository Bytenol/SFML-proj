#include <SFML/Graphics.hpp>


void pollEvent(sf::RenderWindow& win, sf::Event& evt);
void animate(float dt);
void draw(sf::RenderWindow& win);

int main(int argc, char const *argv[])
{

    // Create the main window
    sf::RenderWindow window(sf::VideoMode({640, 480}), "SFML window with OpenGL");
    sf::Event evt;
    
    while (window.isOpen())
    {
        pollEvent(window, evt);
        animate(1.0f / 60.0f);
        window.clear(sf::Color::Black);
        draw(window);
        window.display();
    }
    

    return 0;
}


void animate(float dt) {

}


void draw(sf::RenderWindow& win) {

}

void pollEvent(sf::RenderWindow& win, sf::Event& evt) {
    while (win.pollEvent(evt))
    {
        if(evt.type == sf::Event::Closed) {
            win.close();
        }
    }
    
}