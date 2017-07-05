(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.404182462823406307705909057403914630413055419921875p899 {+ 1820275988961182 899 (5.93458e+270)}
; Y = 1.98053234347219841993137379176914691925048828125p-515 {+ 4415925096686112 -515 (1.84644e-155)}
; 1.404182462823406307705909057403914630413055419921875p899 > 1.98053234347219841993137379176914691925048828125p-515 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110000010 #b0110011101111000100000000111101101110001011110011110)))
(assert (= y (fp #b0 #b00111111100 #b1111101100000100001010101110101111100010001000100000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
