module Firstmodule where
(+++) lst1 lst2 = if null lst1  {- check emptyness -}
                then lst2      -- base case
                else (head lst1) : (tail lst1 +++ lst2)
lst4=["k","l","p"]
lst5=reverse lst4
maxmin list = if null (tail list)
    then (head list, head list)
    else ( if (head list) > fst (maxmin (tail list))
           then head list
           else fst (maxmin (tail list))
         , if (head list) < snd (maxmin (tail list))
           then head list
           else snd (maxmin (tail list))
         )
maxmin1 list = let h = head list
               in if null (tail list)
                  then (h, h)
                  else ( if h > t_max then h else t_max
                     , if h < t_min then h else t_min )
                        where t = maxmin1 (tail list)
                              t_max = fst t
                              t_min = snd t

