(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8911493883958396811095781231415458023548126220703125p699 {- 4013380053510949 699 (-4.97385e+210)}
; Y = 1.4180754176273173694511342546320520341396331787109375p746 {+ 1882844295039151 746 (5.24899e+224)}
; -1.8911493883958396811095781231415458023548126220703125p699 < 1.4180754176273173694511342546320520341396331787109375p746 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010111010 #b1110010000100010010111011100011100000010101100100101)))
(assert (= y (fp #b0 #b11011101001 #b0110101100000110111111011001010111111000100010101111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
