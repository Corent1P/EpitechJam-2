/*
** EPITECH PROJECT, 2023
** EpitechJam-2
** File description:
** main
*/

#include <iostream>
#include <SFML/Graphics.hpp>

int main()
{
    sf::RenderWindow window(sf::VideoMode(1920, 1080), "SFML works!", sf::Style::Resize);
    sf::CircleShape shape(100.f);
    shape.setFillColor(sf::Color::Green);
    sf::Event event;

    while (window.isOpen()) {
        while (window.pollEvent(event)) {
            if (event.type == sf::Event::Closed)
                window.close();
        }

        window.clear();
        window.draw(shape);
        window.display();
    }

    return 0;
}
