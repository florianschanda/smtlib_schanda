(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.922582485006306018959776338306255638599395751953125p-219 {+ 4154942135692946 -219 (2.282e-066)}
; Y = -1.755430759870929779964399131131358444690704345703125p447 {- 3402157688658930 447 (-6.37958e+134)}
; 1.922582485006306018959776338306255638599395751953125p-219 = -1.755430759870929779964399131131358444690704345703125p447 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100100100 #b1110110000101110010111011010000011110110111010010010)))
(assert (= y (fp #b1 #b10110111110 #b1100000101100011111010010000100000001001101111110010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
