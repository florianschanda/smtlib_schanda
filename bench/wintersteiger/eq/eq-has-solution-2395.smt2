(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.66343690952081590950228928704746067523956298828125p-384 {+ 2987854218501780 -384 (4.22171e-116)}
; Y = -1.023981504424527511076803421019576489925384521484375p263 {- 108003094390086 263 (-1.51768e+079)}
; 1.66343690952081590950228928704746067523956298828125p-384 = -1.023981504424527511076803421019576489925384521484375p263 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001111111 #b1010100111010111000000000101010101011001111010010100)))
(assert (= y (fp #b1 #b10100000110 #b0000011000100011101001101110000100110110010101000110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
