(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0776803525057818688992483657784759998321533203125p5 {- 349841206599048 5 (-34.4858)}
; Y = -1.6474920004835909015383776932139880955219268798828125p129 {- 2916044732103277 129 (-1.12122e+039)}
; -1.0776803525057818688992483657784759998321533203125p5 > -1.6474920004835909015383776932139880955219268798828125p129 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000000100 #b0001001111100010110111000000110110001101110110001000)))
(assert (= y (fp #b1 #b10010000000 #b1010010111000010000010010010011001111111101001101101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
