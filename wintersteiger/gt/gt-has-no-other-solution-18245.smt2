(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.623745868365903621821644264855422079563140869140625p484 {- 2809101660346570 484 (-8.11028e+145)}
; Y = -1.2630085865796505384395231885719113051891326904296875p151 {- 1184485372515355 151 (-3.60525e+045)}
; -1.623745868365903621821644264855422079563140869140625p484 > -1.2630085865796505384395231885719113051891326904296875p151 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111100011 #b1001111110101101110011110010100110100101100011001010)))
(assert (= y (fp #b1 #b10010010110 #b0100001101010100100001111101110111101101010000011011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
