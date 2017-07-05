(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.364607772948898567477726828656159341335296630859375p-369 {- 1642047430389046 -369 (-1.13485e-111)}
; Y = -1.2505319984934721855296402281965129077434539794921875p-659 {- 1128295815059587 -659 (-5.2279e-199)}
; -1.364607772948898567477726828656159341335296630859375p-369 > -1.2505319984934721855296402281965129077434539794921875p-659 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010001110 #b0101110101010110111011110101110010101110110100110110)))
(assert (= y (fp #b1 #b00101101100 #b0100000000100010110111010111010000100001100010000011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
