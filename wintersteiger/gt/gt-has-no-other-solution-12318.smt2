(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.539947909718315965932333710952661931514739990234375p572 {+ 2431709205006886 572 (2.38047e+172)}
; Y = -1.9268009945234785273981970021850429475307464599609375p-862 {- 4173940613582543 -862 (-6.26586e-260)}
; 1.539947909718315965932333710952661931514739990234375p572 > -1.9268009945234785273981970021850429475307464599609375p-862 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000111011 #b1000101000111010000001101011010111001000101000100110)))
(assert (= y (fp #b1 #b00010100001 #b1110110101000010110101000111100101100000111011001111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
