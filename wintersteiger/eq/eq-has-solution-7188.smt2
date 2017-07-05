(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.40753402176343112017775638378225266933441162109375p-422 {+ 1835370068554588 -422 (1.29957e-127)}
; Y = -1.6194111011305485359201838946319185197353363037109375p-61 {- 2789579604240687 -61 (-7.02308e-019)}
; 1.40753402176343112017775638378225266933441162109375p-422 = -1.6194111011305485359201838946319185197353363037109375p-61 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001011001 #b0110100001010100001001100100111101111011001101011100)))
(assert (= y (fp #b1 #b01111000010 #b1001111010010001101110011101011000100010100100101111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
