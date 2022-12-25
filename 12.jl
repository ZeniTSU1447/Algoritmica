function peregorodki(robot)
    side = Ost
    cnt = 0
    cnt_check = 0
    breaks = 0
    res = 0
    while !isborder(robot, side)
        move!(robot, side)
        if isborder(robot, Nord)
            breaks = 0
            cnt += 1;
            cnt_check += 1
        elseif !isborder(robot, Nord) 
            breaks += 1
            if (breaks <= 1) 
                cnt += 1;
                cnt_check += 1
            else
                if (cnt == 0 || cnt_check == 0)
                    res += 0
                else 
                    res += cnt / cnt_check
                    cnt = 0
                    cnt_check = 0
                end
            end
        end
        if isborder(robot, side) && !isborder(robot, Nord)
            if (breaks <= 1)
                if (cnt == 0 || cnt_check == 0)
                    res += 0
                else 
                    res += cnt / cnt_check
                    cnt = 0
                    cnt_check = 0
                end
            end
            move!(robot, Nord)
            side = inverse(side)
            cnt = 0
            cnt_check = 0
        end
    end
    return res
end

inverse(side::HorizonSide) = HorizonSide((Int(side) +2)% 4)