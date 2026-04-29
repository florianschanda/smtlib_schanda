(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = 1.8752740550327615665082703344523906707763671875p-381 {+ 3941883908092608 -381 (3.80747e-115)}
; -zero = 1.8752740550327615665082703344523906707763671875p-381 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b01010000010 #b1110000000010001111101011110000101100111001011000000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
