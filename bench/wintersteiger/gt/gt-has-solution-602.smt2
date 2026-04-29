(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.00148850450225523900371626950800418853759765625p466 {- 6703628321696 466 (-1.9082e+140)}
; Y = 1.7963538671062184715054854677873663604259490966796875p-430 {+ 3586458979154619 -430 (6.47879e-130)}
; -1.00148850450225523900371626950800418853759765625p466 > 1.7963538671062184715054854677873663604259490966796875p-430 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111010001 #b0000000001100001100011001111011000101000001110100000)))
(assert (= y (fp #b0 #b01001010001 #b1100101111011101110110001101011101000011101010111011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
