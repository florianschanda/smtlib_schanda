(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.287652910747726142659530523815192282199859619140625p386 {- 1295473541655498 386 (-2.02944e+116)}
; Y = -1.833146548340510495478383745648898184299468994140625p790 {- 3752158484651338 790 (-1.1937e+238)}
; -1.287652910747726142659530523815192282199859619140625p386 + -1.833146548340510495478383745648898184299468994140625p790 == -1.833146548340510495478383745648898184299468994140625p790
; [HW: -1.833146548340510495478383745648898184299468994140625p790] 

; mpf : - 3752158484651338 790
; mpfd: - 3752158484651338 790 (-1.1937e+238) class: Neg. norm. non-zero
; hwf : - 3752158484651338 790 (-1.1937e+238) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110000001 #b0100100110100011100111110000010001000010101111001010)))
(assert (= y (fp #b1 #b11100010101 #b1101010101001001000101111001100111100101110101001010)))
(assert (= r (fp #b1 #b11100010101 #b1101010101001001000101111001100111100101110101001010)))
(assert  (not (= (fp.add roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
