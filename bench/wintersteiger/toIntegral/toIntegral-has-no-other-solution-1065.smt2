(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.187208242093749532841684413142502307891845703125 602 {- 843110969334096 602 (-1.97054e+181)}
; -1.187208242093749532841684413142502307891845703125 602 I == -1.187208242093749532841684413142502307891845703125 602
; [HW: -1.187208242093749532841684413142502307891845703125 602] 

; mpf : - 843110969334096 602
; mpfd: - 843110969334096 602 (-1.97054e+181) class: Neg. norm. non-zero
; hwf : - 843110969334096 602 (-1.97054e+181) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001011001 #b0010111111101100111000010001110101010101100101010000)))
(assert (= r (fp #b1 #b11001011001 #b0010111111101100111000010001110101010101100101010000)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
