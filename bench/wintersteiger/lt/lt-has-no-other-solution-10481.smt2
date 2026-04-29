(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5875567294847561239379274411476217210292816162109375p-95 {+ 2646120267966575 -95 (4.00756e-029)}
; Y = 1.47296209110472009484738009632565081119537353515625p-468 {+ 2130031897259588 -468 (1.93265e-141)}
; 1.5875567294847561239379274411476217210292816162109375p-95 < 1.47296209110472009484738009632565081119537353515625p-468 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110100000 #b1001011001101010000111100010100110101110100001101111)))
(assert (= y (fp #b0 #b01000101011 #b0111100100010100000010110010100110001010111001000100)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
