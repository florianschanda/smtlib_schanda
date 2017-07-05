(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.99040145501615572953824084834195673465728759765625p676 {- 4460371623757956 676 (-6.24048e+203)}
; Y = -1.7498149623639400740415794643922708928585052490234375p-716 {- 3376866385099063 -716 (-5.07593e-216)}
; -1.99040145501615572953824084834195673465728759765625p676 < -1.7498149623639400740415794643922708928585052490234375p-716 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010100011 #b1111110110001010111100110010001100110100100010000100)))
(assert (= y (fp #b1 #b00100110011 #b1011111111110011110111111001010101100111100100110111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
