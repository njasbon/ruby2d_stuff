require 'ruby2d'
require 'pry'

set title: "Gunter"

justgunter = Sprite.new(
  'gunther.png',
  animations: {
    walking: [
      {
        x: 0, y: 0,
        width: 60, height: 101,
        time: 300
      },
      {
        x: 61, y: 0,
        width: 60, height: 101,
        time: 300
      },
      {
        x: 121, y: 0,
        width: 60, height: 101,
        time: 300
      }
    ],
    trip: [
      {
        x: 0, y: 152,
        width: 60, height: 101,
        time: 300
      },
      {
        x: 61, y: 152,
        width: 60, height: 101,
        time: 300
      },
      {
        x: 121, y: 152,
        width: 60, height: 101,
        time: 300
      }
    ],
    fall: [
      {
        x: 0, y: 232,
        width: 60, height: 71,
        time: 300
      },
      {
        x: 61, y: 232,
        width: 60, height: 71,
        time: 300
      },
      {
        x: 121, y: 232,
        width: 60, height: 71,
        time: 300
      }
    ],
    attack: [
      {
        x: 0, y: 370,
        width: 60, height: 71,
        time: 300
      },
      {
        x: 61, y: 370,
        width: 60, height: 71,
        time: 300
      },
      {
        x: 121, y: 370,
        width: 60, height: 71,
        time: 300
      }
    ]
  }

)


on :key_down do |event|
  case event.key
    when 'left'
      justgunter.play animation: :walking, loop: true
    when 'right'
      justgunter.play animation: :trip, loop: true
    when 'up'
     justgunter.play animation: :attack, loop: true
    when 'down'
     justgunter.play animation: :fall, loop: true
  end
end



show