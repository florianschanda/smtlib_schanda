(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = -1.4083759342935089353687772018020041286945343017578125p-624 {- 1839161705511325 -624 (-2.02303e-188)}
; -zero < -1.4083759342935089353687772018020041286945343017578125p-624 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b00110001111 #b0110100010001011010100110100001001000011100110011101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
