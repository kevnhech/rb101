# Code will print integers 0 through 2 including nil

def count_sheep
    5.times do |sheep|
        puts sheep
        if sheep >= 2
            return
        end
    end
end

p count_sheep