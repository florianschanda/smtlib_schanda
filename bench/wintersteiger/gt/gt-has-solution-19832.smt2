(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6977695055156643011429196121753193438053131103515625p-420 {- 3142474485030841 -420 (-6.27019e-127)}
; Y = 1.6761528506041412089899722559493966400623321533203125p-71 {+ 3045121726026309 -71 (7.09878e-022)}
; -1.6977695055156643011429196121753193438053131103515625p-420 > 1.6761528506041412089899722559493966400623321533203125p-71 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001011011 #b1011001010100001000001011011011001010101111110111001)))
(assert (= y (fp #b0 #b01110111000 #b1010110100011000010110100110110001110001001001000101)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
