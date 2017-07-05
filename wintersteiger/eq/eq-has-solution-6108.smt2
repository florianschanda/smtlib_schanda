(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8361257182376047314420475231599994003772735595703125p-533 {+ 3765575473089765 -533 (6.53002e-161)}
; Y = 1.6079712413824143180107739681261591613292694091796875p-250 {+ 2738059056141819 -250 (8.88749e-076)}
; 1.8361257182376047314420475231599994003772735595703125p-533 = 1.6079712413824143180107739681261591613292694091796875p-250 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111101010 #b1101011000001100010101011100011100101100110011100101)))
(assert (= y (fp #b0 #b01100000101 #b1001101110100100000000001101011010100101010111111011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
