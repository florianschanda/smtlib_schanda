(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4791925490144188781727052628411911427974700927734375p54 {- 2158091385180055 54 (-2.66468e+016)}
; Y = -1.873653366320657820409678606665693223476409912109375p-783 {- 3934584975012694 -783 (-3.68301e-236)}
; -1.4791925490144188781727052628411911427974700927734375p54 = -1.873653366320657820409678606665693223476409912109375p-783 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000110101 #b0111101010101100010111001110011010000000111110010111)))
(assert (= y (fp #b1 #b00011110000 #b1101111110100111101111110011110001100011001101010110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
