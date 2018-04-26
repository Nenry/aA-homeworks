
### Sluggish Octopus
# Find the longest fish in O(n^2) time. Do this by comparing all fish lengths to all other fish lengths


['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(fish_array)

  sorted = false
  until sorted
    sorted = true
    fish_array.each_with_index do |fish, idx|
      next if (idx + 1) == fish_array.length
      if fish_array[idx].length > fish_array[idx + 1].length
        fish_array[idx], fish_array[idx + 1] = fish_array[idx + 1], fish_array[idx]
        sorted = false
      end
    end
  end

    fish_array.last
end

p sluggish_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']) == "fiiiissshhhhhh"




#Dominant Octopus
#Find the longest fish in O(n log n) time. Hint: You saw a sorting algorithm that
# runs in O(n log n) in the Sorting Demo. Remember that Big O is classified by the dominant term.

def dominant_octopus(fish_array)
  results = fish_array.my_quick_sort {|left, right| left.length <=> right.length}

  results.last
end


class Array

  def my_quick_sort(&prc)
    prc ||= proc {|left, right| left <=> right}
    return self if size < 2

    pivot = first
    left = self[1..-1].select{|el| prc.call(el, pivot) == -1}
    right = self[1..-1].select{|el| prc.call(el, pivot) != -1}

    left.my_quick_sort(&prc) + [pivot] + right.my_quick_sort(&prc)
  end

end

p dominant_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']) == "fiiiissshhhhhh"



#Clever Octopus
#Find the longest fish in O(n) time. The octopus can hold on to the longest fish
#that you have found so far while stepping through the array only once.

def clever_octopus(fish_array)
  longest = ""

  fish_array.length.times do |i|
    if fish_array[i].length > longest.length
      longest = fish_array[i]
    end
  end

  longest
end

p clever_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']) == "fiiiissshhhhhh"


#dancing octopus
tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
def slow_dance(move, moves_array)
  moves_array.length.times do |i|
  return i if moves_array[i] == move
  end
end

p slow_dance('left-up', tiles_array) == 7

def fast_dance(move, moves_array)
  moves_array.index(move)
end

p slow_dance('left-up', tiles_array) == 7
