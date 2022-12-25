function peregorodki(robot)
    side = Ost
    cnt = 0
    cnt_check = 0
    res = 0
    while !isborder(robot, side)
        move!(robot, side)
        if isborder(robot, Nord)
            cnt += 1;
            cnt_check += 1
        else 
            if cnt == 0 || cnt_check == 0
                res += 0
            else 
                res += cnt / cnt_check
                cnt = 0
                cnt_check = 0
            end
        end
        if isborder(robot, side) && !isborder(robot, Nord)
            move!(robot, Nord)
            side = inverse(side)
            cnt = 0
            cnt_check = 0
        end
    end
    return res
end

inverse(side::HorizonSide) = HorizonSide((Int(side) +2)% 4)