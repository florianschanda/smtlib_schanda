(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8032567121099447593479681017925031483173370361328125p-593 {+ 3617546629341197 -593 (5.5625e-179)}
; Y = -1.1554414212315091692317992055905051529407501220703125p526 {- 700045926736165 526 (-2.5382e+158)}
; 1.8032567121099447593479681017925031483173370361328125p-593 < -1.1554414212315091692317992055905051529407501220703125p526 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110101110 #b1100110110100010001110110101110011001110000000001101)))
(assert (= y (fp #b1 #b11000001101 #b0010011111001011000000100100110010100010000100100101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
