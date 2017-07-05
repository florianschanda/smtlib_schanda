(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.404630601446803961351861289585940539836883544921875p-241 {+ 1822294225898526 -241 (3.97496e-073)}
; Y = 1.072078525023341999400372515083290636539459228515625p-957 {+ 324612818436538 -957 (8.80077e-289)}
; 1.404630601446803961351861289585940539836883544921875p-241 > 1.072078525023341999400372515083290636539459228515625p-957 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100001110 #b0110011110010101110111110000000000101100110000011110)))
(assert (= y (fp #b0 #b00001000010 #b0001001001110011101111001111101110111000000110111010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
