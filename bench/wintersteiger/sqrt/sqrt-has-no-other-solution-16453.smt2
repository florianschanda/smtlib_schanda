(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.431525748471241143988663679920136928558349609375p-253 {+ 1943419200015856 -253 (9.89032e-077)}
; 1.431525748471241143988663679920136928558349609375p-253 S == 1.692055405990738226051917081349529325962066650390625p-127
; [HW: 1.692055405990738226051917081349529325962066650390625p-127] 

; mpf : + 3116740468539626 -127
; mpfd: + 3116740468539626 -127 (9.94501e-039) class: Pos. norm. non-zero
; hwf : + 3116740468539626 -127 (9.94501e-039) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100000010 #b0110111001111000011110001011000100010000110111110000)))
(assert (= r (fp #b0 #b01110000000 #b1011000100101010100010110000011111000000000011101010)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
