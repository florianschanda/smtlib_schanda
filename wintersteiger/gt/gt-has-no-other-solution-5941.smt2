(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8369644969427041392151522813946940004825592041015625p509 {+ 3769352996553497 509 (3.07871e+153)}
; Y = -1.1752228149911332355515014569391496479511260986328125p-891 {- 789133404300877 -891 (-7.11859e-269)}
; 1.8369644969427041392151522813946940004825592041015625p509 > -1.1752228149911332355515014569391496479511260986328125p-891 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111111100 #b1101011001000011010011100010011001001000001100011001)))
(assert (= y (fp #b1 #b00010000100 #b0010110011011011011001110000001111100110011001001101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
