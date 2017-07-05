(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.981328112034953736753095654421485960483551025390625p1016 {+ 4419508919688810 1016 (1.39134e+306)}
; Y = -1.8337842062668474607534108145046047866344451904296875p131 {- 3755030240650779 131 (-4.99204e+039)}
; Z = 1.160654456880363394333244286826811730861663818359375p834 {+ 723523352141814 834 (1.32959e+251)}
; 1.981328112034953736753095654421485960483551025390625p1016 x -1.8337842062668474607534108145046047866344451904296875p131 1.160654456880363394333244286826811730861663818359375p834 == -1.9999999999999997779553950749686919152736663818359375p1023
; [HW: -1.9999999999999997779553950749686919152736663818359375p1023] 

; mpf : - 4503599627370495 1023
; mpfd: - 4503599627370495 1023 (-1.79769e+308) class: Neg. norm. non-zero
; hwf : - 4503599627370495 1023 (-1.79769e+308) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111110111 #b1111101100111000010100011011001111010101111001101010)))
(assert (= y (fp #b1 #b10010000010 #b1101010101110010111000011011100111010110011000011011)))
(assert (= z (fp #b0 #b11101000001 #b0010100100100000101001101000011001000001111111110110)))
(assert (= r (fp #b1 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
(assert  (not (= (fp.fma roundTowardPositive x y z) r)))
(check-sat)
(exit)
