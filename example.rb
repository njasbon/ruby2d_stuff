require 'ruby2d'

set title: "Hello Triangle"

Triangle.new(
  x1: 320, y1:  70,
  x2: 600, y2: 430,
  x3: 200, y3: 430,
  color: ['yellow', '#BADA55', 'blue']
)
s = Square.new(x: 60, y: 60, size: 100)

r = Rectangle.new(
  x: 125, y: 250,
  width: 200, height: 150,
  color: 'red',
  z: 20
)

c = Circle.new(
  x: 200, y: 175,
  radius: 150,
  sectors: 32,
  color: 'fuchsia',
  z: 10
)

show