(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.194594265204666161395152812474407255649566650390625p-646 {+ 876374660264170 -646 (4.09113e-195)}
; Y = -1.807001492506002282567578731686808168888092041015625p-493 {- 3634411620937466 -493 (-7.06595e-149)}
; 1.194594265204666161395152812474407255649566650390625p-646 M -1.807001492506002282567578731686808168888092041015625p-493 == 1.194594265204666161395152812474407255649566650390625p-646
; [HW: 1.194594265204666161395152812474407255649566650390625p-646] 

; mpf : + 876374660264170 -646
; mpfd: + 876374660264170 -646 (4.09113e-195) class: Pos. norm. non-zero
; hwf : + 876374660264170 -646 (4.09113e-195) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101111001 #b0011000111010000111011100000010100001011000011101010)))
(assert (= y (fp #b1 #b01000010010 #b1100111010010111101001100101101000100010111011111010)))
(assert (= r (fp #b0 #b00101111001 #b0011000111010000111011100000010100001011000011101010)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
