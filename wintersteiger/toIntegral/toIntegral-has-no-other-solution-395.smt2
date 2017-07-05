(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9476329943432642011202915455214679241180419921875 588 {+ 4267759600208312 588 (1.97308e+177)}
; 1.9476329943432642011202915455214679241180419921875 588 I == 1.9476329943432642011202915455214679241180419921875 588
; [HW: 1.9476329943432642011202915455214679241180419921875 588] 

; mpf : + 4267759600208312 588
; mpfd: + 4267759600208312 588 (1.97308e+177) class: Pos. norm. non-zero
; hwf : + 4267759600208312 588 (1.97308e+177) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001001011 #b1111001010011000000100110110111101010000100110111000)))
(assert (= r (fp #b0 #b11001001011 #b1111001010011000000100110110111101010000100110111000)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
