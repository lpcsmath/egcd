use "egcd.sml";
let
   val (s,t,d) = egcd 1769 551
in
   if (s=5 andalso t=(~16) andalso d=29)
      then print "PASSED!\n"
      else print "FAILED"
end;
