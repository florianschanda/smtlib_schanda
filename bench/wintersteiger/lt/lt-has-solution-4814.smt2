(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3875288718117240183147487186943180859088897705078125p122 {+ 1745274882686589 122 (7.37737e+036)}
; Y = -1.907954509910795071192524119396694004535675048828125p440 {- 4089063592503618 440 (-5.41709e+132)}
; 1.3875288718117240183147487186943180859088897705078125p122 < -1.907954509910795071192524119396694004535675048828125p440 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001111001 #b0110001100110101000101111001011010101111111001111101)))
(assert (= y (fp #b1 #b10110110111 #b1110100001101111101101001110111001010010100101000010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
