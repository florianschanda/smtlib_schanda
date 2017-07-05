(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7346371855546569573647275319672189652919769287109375p927 {- 3308511755116463 927 (-1.96795e+279)}
; Y = 1.9560387722482006633839546339004300534725189208984375p-409 {+ 4305615858448743 -409 (1.47948e-123)}
; -1.7346371855546569573647275319672189652919769287109375p927 = 1.9560387722482006633839546339004300534725189208984375p-409 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110011110 #b1011110000010001001011101011111001100001111110101111)))
(assert (= y (fp #b0 #b01001100110 #b1111010010111110111101001111110010000011100101100111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
