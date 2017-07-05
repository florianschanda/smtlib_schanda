(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.842407864317423982214450006722472608089447021484375p-486 {+ 3793867743833926 -486 (9.22163e-147)}
; 1.842407864317423982214450006722472608089447021484375p-486 | == 1.842407864317423982214450006722472608089447021484375p-486
; [HW: 1.842407864317423982214450006722472608089447021484375p-486] 

; mpf : + 3793867743833926 -486
; mpfd: + 3793867743833926 -486 (9.22163e-147) class: Pos. norm. non-zero
; hwf : + 3793867743833926 -486 (9.22163e-147) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000011001 #b1101011110101000000010101011001100100010111101000110)))
(assert (= r (fp #b0 #b01000011001 #b1101011110101000000010101011001100100010111101000110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
