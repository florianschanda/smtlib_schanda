(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.87781647157340980669459895580075681209564208984375p629 {+ 3953333934277692 629 (4.18331e+189)}
; Y = 1.2298711094779946062516273741493932902812957763671875p323 {+ 1035247442988339 323 (2.10159e+097)}
; 1.87781647157340980669459895580075681209564208984375p629 = 1.2298711094779946062516273741493932902812957763671875p323 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001110100 #b1110000010111000100101001000110101001100010000111100)))
(assert (= y (fp #b0 #b10101000010 #b0011101011011000110101010100000110000000110100110011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
