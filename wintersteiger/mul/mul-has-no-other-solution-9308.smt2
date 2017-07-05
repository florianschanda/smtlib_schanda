(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.85151160782727419729098983225412666797637939453125p-874 {- 3834867359712564 -874 (-1.46998e-263)}
; Y = 0.4381818171947882145644825868657790124416351318359375p-1022 {+ 1973395468638975 -1023 (9.74987e-309)}
; -1.85151160782727419729098983225412666797637939453125p-874 * 0.4381818171947882145644825868657790124416351318359375p-1022 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010010101 #b1101100111111100101010100010101111001000010100110100)))
(assert (= y (fp #b0 #b00000000000 #b0111000000101100101011101111111010001101101011111111)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
