(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.567178701275780294821515781222842633724212646484375p404 {+ 2554345787718086 404 (6.47496e+121)}
; Y = 1.025310454634588808175976737402379512786865234375p-1021 {+ 113988154060912 -1021 (4.56278e-308)}
; 1.567178701275780294821515781222842633724212646484375p404 > 1.025310454634588808175976737402379512786865234375p-1021 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110010011 #b1001000100110010100111111001010011110111100111000110)))
(assert (= y (fp #b0 #b00000000010 #b0000011001111010101111101111011011100111000001110000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
