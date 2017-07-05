(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0336359051167163247697544647962786257266998291015625p1002 {+ 151482649749913 1002 (4.4302e+301)}
; Y = -1.553703023679760431008389787166379392147064208984375p-431 {- 2493656731118086 -431 (-2.80182e-130)}
; 1.0336359051167163247697544647962786257266998291015625p1002 = -1.553703023679760431008389787166379392147064208984375p-431 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111101001 #b0000100010011100010111001101100001110010100110011001)))
(assert (= y (fp #b1 #b01001010000 #b1000110110111111011110110011101001100110101000000110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
