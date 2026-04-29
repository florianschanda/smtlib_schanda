(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6895623953420397800329055826296098530292510986328125p477 {- 3105512946711117 477 (-6.59299e+143)}
; Y = 1.4037686595452492088753615462337620556354522705078125p-589 {+ 1818412384671869 -589 (6.92832e-178)}
; -1.6895623953420397800329055826296098530292510986328125p477 < 1.4037686595452492088753615462337620556354522705078125p-589 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111011100 #b1011000010000111001010010100000010001011101001001101)))
(assert (= y (fp #b0 #b00110110010 #b0110011101011101011000100000001111100101100001111101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
