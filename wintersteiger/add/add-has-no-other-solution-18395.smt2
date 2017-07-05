(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.91363150930260506044078283593989908695220947265625p-685 {+ 4114630524849156 -685 (1.1921e-206)}
; Y = -1.21517109175188497971475953818298876285552978515625p-864 {- 969044448634692 -864 (-9.87919e-261)}
; 1.91363150930260506044078283593989908695220947265625p-685 + -1.21517109175188497971475953818298876285552978515625p-864 == 1.9136315093026048383961779109085910022258758544921875p-685
; [HW: 1.9136315093026048383961779109085910022258758544921875p-685] 

; mpf : + 4114630524849155 -685
; mpfd: + 4114630524849155 -685 (1.1921e-206) class: Pos. norm. non-zero
; hwf : + 4114630524849155 -685 (1.1921e-206) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101010010 #b1110100111100011110000010010110100001100110000000100)))
(assert (= y (fp #b1 #b00010011111 #b0011011100010101011100111110001000011110011101000100)))
(assert (= r (fp #b0 #b00101010010 #b1110100111100011110000010010110100001100110000000011)))
(assert  (not (= (fp.add roundTowardNegative x y) r)))
(check-sat)
(exit)
