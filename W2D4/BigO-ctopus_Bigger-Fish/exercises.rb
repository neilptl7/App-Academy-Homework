# Big O-ctopus and Biggest Fish

# A Very Hungry Octopus wants to eat the longest fish in an array of fish.

fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish',
         'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"

# Sluggish Octopus
# Find the longest fish in O(n^2) time. Do this by comparing all fish
# lengths to all other fish lengths

def sluggish_octopus(fishes)
  fishes.each_with_index do |fish1, idx1|
    longest = true

    fishes.each_with_index do |fish2, idx2|
      next if idx1 == idx2
      longest = false if fish2.length > fish1.length
    end

    return fish1 if fish1 = longest
  end

end

# Dominant Octopus
# Find the longest fish in O(n log n) time. Hint: You saw a sorting
# algorithm that runs in O(n log n) in the Sorting Demo. Remember that
# Big O is classified by the dominant term.

class Array

  #Dominant Octopus
  def merge_sort(&prc)

    prc ||= Proc.new { |a, b| a <=> b }

    midpoint = length / 2
    left_sort = self.take(midpoint).merge_sort(&prc)
    right_sort = self.drop(midpoint).merge_sort(&prc)

    Array.merge(left_sort, right_sort, &prc)

  end

  def self.merge(left, right, &prc)
    merged = []

    until left.empty? || right.emty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      when 0
        merged << left.shift
      when 1
        merged << right.shift
      end
    end

    merged.concat(left)
    merged.concat(right)

    merged
  end

end

def dominant_octopus(fishes)
  prc = Proc.new { |a, b| a <=> b }
  fishes.merge_sort(&prc)[0]
end

# Clever Octopus
# Find the longest fish in O(n) time. The octopus can hold on to the
# longest fish that you have found so far while stepping through the array
# only once.

def clever_octopus(fishes)
  biggest_fish = fishes.first

  fishes.each do |fish|

    if fish.length > biggest_fish.length
      biggest_fish = fish
    end
  end

  biggest_fish
end


# linear octopus dance
# tiles_array = ["up", "right-up", "right", "right-down",
# =>            "down", "left-down", "left",  "left-up" ]

# Given a tile direction, iterate through a tiles array to return the
# tentacle number (tile index) the octopus must move. This should take O(n)
#time.

def slow_dance(direction, tiles_array)
  tiles_array.each_with_index do |tile, index|
    return index if tile == direction
  end
end


# Now that the octopus is warmed up, let's help her dance faster.
# Use a different data structure and write a new function so that you can
# access the tentacle number in O(1) time.

hash = {
  "up" => 0,
  "right-up" => 1,
  "right" => 2,
  "right-down" => 3,
  "down" => 4,
  "left-down" => 5,
  "left" => 6,
  "left-up" => 7
}
def constant_dance(direction, hash)
  hash[direction]
end
