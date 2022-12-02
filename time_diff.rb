require "byebug"

def my_min(arr)
    min = 0
    (0...arr.length).each do |idx1|
        (0...arr.length).each do |idx2|
            min = arr[idx1] if arr[idx1] < arr[idx2] && arr[idx1] <= min
        end
    end
    min
end

def my_minp2(arr)
    min = 0
    arr.each do |ele|
        min = ele if ele < min
    end
    min
end

def sub_sum_p1(arr)
    subs = []
    (0...arr.length).each do |idx1|
        (idx1...arr.length).each do |idx2|
            subs << arr[idx1..idx2]
        end
    end
    max = subs.map {|sub| sub.sum}
    max.max
end

def sub_sum_p2(arr)
    max = 0
    current = 0
    i = 0
    while i <= arr.length-1
        current += arr[i]
        max = current if current > max
        current = 0 if current < 0 
        i += 1
    end
    max
end

def first_anagram?(str1, str2)
    letters = str1.split("")
    perms = letters.permutation.to_a
    perms.include?(str2.split(""))
end

def second_anagram?(str1, str2)
    str1.each_char do |ele|
        if str2.include?(ele)
            idx = str2.index(ele)
            str2[idx] =""
        end
    end
    str2 == ""
end

def third_anagram?(str1, str2)
    str1.split('').sort == str2.split('').sort
end

def fourth_anagram?(str1, str2)
    count1 = Hash.new(0)
    count2 = Hash.new(0)
    str1.each_char {|char| count1[char]+= 1}
    str2.each_char {|char| count2[char]+= 1}
    count1 == count2
end

def bad_two_sum?(arr, target)
    arr.each_with_index do |ele1, idx1|
        arr.each_with_index do |ele2, idx2|
            if idx1 < idx2 
                return true if ele1 + ele2 == target
            end
        end
    end
    false
end