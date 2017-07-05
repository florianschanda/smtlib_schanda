(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.33036927273000937788083319901488721370697021484375p-851 {- 1487850933561532 -851 (-8.86025e-257)}
; Y = -1.42141949479778961773490664199925959110260009765625p-217 {- 1897904679737988 -217 (-6.74859e-066)}
; -1.33036927273000937788083319901488721370697021484375p-851 > -1.42141949479778961773490664199925959110260009765625p-217 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010101100 #b0101010010010011000101001010010111111010100010111100)))
(assert (= y (fp #b1 #b01100100110 #b0110101111100010001001011110010000001101101010000100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
