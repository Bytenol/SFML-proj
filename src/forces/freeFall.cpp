/**
 * This is a simple program that simulate the weight force and the normal force while in here.
 * The program has no special controls.
*/

#include <SFML/Graphics.hpp>
#include <vector>

const int W = 400;
const int H = 500;


struct Circle {

    float radius = 20.0f;
    float mass = 1.0f;
    sf::Vector2f position;
    sf::Vector2f velocity;
    sf::Color color;
};



int main()
{

    // Create the main window
    sf::RenderWindow window { sf::VideoMode{ {W, H + 100} }, "Free Fall" };
    sf::Event evt;

    sf::Clock t0;
    t0.reset();

    std::vector<Circle> balls;
    for(unsigned int i{ }; i < 5; i++)
        balls.emplace_back(Circle{ 20.0f,  i * 20.0f, { i * 40.0f * 2.0f, 20.0f }, { 0.0f, 0.0f }, sf::Color(20 + i * 40, i * 20, i * 4)});

    const float g = 9.8;

    sf::RectangleShape floor;
    floor.setSize({ W, 100.0f });
    floor.setPosition({ 0.0f, H });
    floor.setOutlineThickness(2.0f);
    floor.setOutlineColor(sf::Color::Blue);
    floor.setFillColor(sf::Color(0, 0, 0, 0));

    
    t0.start();

    while (window.isOpen())
    {
        sf::Clock t1;
        const auto dt = (t1.getElapsedTime() - t0.getElapsedTime()).asSeconds();
        t0 = t1;

        // handle events
        while (window.pollEvent(evt))
        {
            switch (evt.type)
            {
                case sf::Event::Closed:
                    window.close();
                    break;
            }
        }
        
        // animate the ball
        for(auto& b: balls) {
            b.position += b.velocity * dt;
            bool isOnGround = b.position.y + b.radius * 2.0f > H;

            // calculate resultant force
            const sf::Vector2f weightFn{ 0.0f, b.mass * g };
            const sf::Vector2f normalFn{ 0.0f, b.mass * -g };
            sf::Vector2f resFn = weightFn;    // weight force

            if(isOnGround) {
                b.position.y = H - b.radius * 2.0f;
                b.velocity = sf::Vector2f{ 0.0f, 0.0f };
                resFn += normalFn;
            }


            // calculate acceleration
            const sf::Vector2f acc = resFn * (1.0f / b.mass);
            b.velocity += acc * dt;
        }


        window.clear(sf::Color::Black);

        for(const auto& c: balls) {
            sf::CircleShape circle { c.radius };
            circle.setPosition(c.position);
            circle.setFillColor(c.color);
            window.draw(circle);
        };

        window.draw(floor);

        window.display();
    }
    

    return 0;
}