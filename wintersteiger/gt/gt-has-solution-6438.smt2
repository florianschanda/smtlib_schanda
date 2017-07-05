(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0643369050015991650326441231300123035907745361328125p-530 {+ 289747661391373 -530 (3.02818e-160)}
; Y = 1.4054047273701930631517598158097825944423675537109375p645 {+ 1825780579118639 645 (2.05186e+194)}
; 1.0643369050015991650326441231300123035907745361328125p-530 > 1.4054047273701930631517598158097825944423675537109375p645 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111101101 #b0001000001111000011000100010011011101000011000001101)))
(assert (= y (fp #b0 #b11010000100 #b0110011111001000100110101010110110110010111000101111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
