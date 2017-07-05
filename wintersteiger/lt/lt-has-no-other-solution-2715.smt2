(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.73435947423053082872002050862647593021392822265625p-161 {+ 3307261054500612 -161 (5.93348e-049)}
; Y = -1.3436403907073295460605777407181449234485626220703125p-124 {- 1547618735538981 -124 (-6.31777e-038)}
; 1.73435947423053082872002050862647593021392822265625p-161 < -1.3436403907073295460605777407181449234485626220703125p-124 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101011110 #b1011101111111110111110111000010101010011111100000100)))
(assert (= y (fp #b1 #b01110000011 #b0101011111111000110100010000111110101100001100100101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
