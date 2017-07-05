(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9694124920218045726727496003150008618831634521484375p-969 {+ 4365845737837703 -969 (3.94703e-292)}
; Y = -1.4342766879020365511365753263817168772220611572265625p380 {- 1955808329811305 380 (-3.53209e+114)}
; 1.9694124920218045726727496003150008618831634521484375p-969 > -1.4342766879020365511365753263817168772220611572265625p380 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000110110 #b1111100000101011011010101100010110010001010010000111)))
(assert (= y (fp #b1 #b10101111011 #b0110111100101100110000011100101111110100010101101001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
