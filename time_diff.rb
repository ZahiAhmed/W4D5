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
