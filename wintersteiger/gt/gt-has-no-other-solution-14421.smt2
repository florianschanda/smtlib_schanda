(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7635151475785069141721805863198824226856231689453125p947 {+ 3438566534126293 947 (2.0979e+285)}
; Y = -1.067294065799914815073634599684737622737884521484375p-804 {- 303065529660742 -804 (-1.00039e-242)}
; 1.7635151475785069141721805863198824226856231689453125p947 > -1.067294065799914815073634599684737622737884521484375p-804 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110110010 #b1100001101110101101110101000110011011001101011010101)))
(assert (= y (fp #b1 #b00011011011 #b0001000100111010001011110001001111010011010101000110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
