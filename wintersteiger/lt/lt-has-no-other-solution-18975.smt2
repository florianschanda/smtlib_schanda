(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.931818639392319791880936463712714612483978271484375p-171 {+ 4196538077144134 -171 (6.45412e-052)}
; Y = -1.2537746070835762424167114659212529659271240234375p-209 {- 1142899225897688 -209 (-1.52388e-063)}
; 1.931818639392319791880936463712714612483978271484375p-171 < -1.2537746070835762424167114659212529659271240234375p-209 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101010100 #b1110111010001011101010101001010111111110010001000110)))
(assert (= y (fp #b1 #b01100101110 #b0100000011110111010111110110010111111010101011011000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
