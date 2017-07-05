(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0299258960633606019285934962681494653224945068359375p-978 {+ 134774254359679 -978 (4.03153e-295)}
; Y = 1.65055033556233166081028684857301414012908935546875p-649 {+ 2929818248824268 -649 (7.0658e-196)}
; 1.0299258960633606019285934962681494653224945068359375p-978 = 1.65055033556233166081028684857301414012908935546875p-649 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000101101 #b0000011110101001001110010011100011100101010001111111)))
(assert (= y (fp #b0 #b00101110110 #b1010011010001010011101110111111110100100010111001100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
