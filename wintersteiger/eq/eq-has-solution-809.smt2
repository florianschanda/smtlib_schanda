(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4941935789500992992628880529082380235195159912109375p-293 {+ 2225650018008559 -293 (9.38897e-089)}
; Y = -1.746575199268934230900640613981522619724273681640625p522 {- 3362275789231626 522 (-2.39798e+157)}
; 1.4941935789500992992628880529082380235195159912109375p-293 = -1.746575199268934230900640613981522619724273681640625p522 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011011010 #b0111111010000011011110000110101101111011110111101111)))
(assert (= y (fp #b1 #b11000001001 #b1011111100011111100011010110000011011101011000001010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
