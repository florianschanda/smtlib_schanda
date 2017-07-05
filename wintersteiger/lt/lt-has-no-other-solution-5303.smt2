(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9439608292883303608533651640755124390125274658203125p-843 {+ 4251221639035269 -843 (3.31437e-254)}
; Y = 1.291675591950859569578824448399245738983154296875p943 {+ 1313590087222960 943 (9.60372e+283)}
; 1.9439608292883303608533651640755124390125274658203125p-843 < 1.291675591950859569578824448399245738983154296875p943 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010110100 #b1111000110100111011010101011101001111111100110000101)))
(assert (= y (fp #b0 #b11110101110 #b0100101010101011010000000110100001111000011010110000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
