(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2589260693486916675709608171018771827220916748046875p-705 {- 1166099349435275 -705 (-7.47917e-213)}
; Y = 1.336651464539944544895888611790724098682403564453125p82 {+ 1516143410255826 82 (6.46365e+024)}
; -1.2589260693486916675709608171018771827220916748046875p-705 = 1.336651464539944544895888611790724098682403564453125p82 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100111110 #b0100001001001000111110101001011111101111001110001011)))
(assert (= y (fp #b0 #b10001010001 #b0101011000101110110010100101011001011001011111010010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
