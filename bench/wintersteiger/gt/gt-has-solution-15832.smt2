(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2777227644133863915243409792310558259487152099609375p139 {- 1250752138324431 139 (-8.90443e+041)}
; Y = 1.9877312008677987531513053909293375909328460693359375p630 {+ 4448345868170431 630 (8.85635e+189)}
; -1.2777227644133863915243409792310558259487152099609375p139 > 1.9877312008677987531513053909293375909328460693359375p630 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010001010 #b0100011100011000110101101100111010000010100111001111)))
(assert (= y (fp #b0 #b11001110101 #b1111110011011011111100111011010011110111010010111111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
