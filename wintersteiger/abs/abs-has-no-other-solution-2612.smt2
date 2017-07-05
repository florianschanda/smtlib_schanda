(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3688273028117301510775405404274351894855499267578125p-1012 {- 1661050503506973 -1012 (-3.11884e-305)}
; -1.3688273028117301510775405404274351894855499267578125p-1012 | == 1.3688273028117301510775405404274351894855499267578125p-1012
; [HW: 1.3688273028117301510775405404274351894855499267578125p-1012] 

; mpf : + 1661050503506973 -1012
; mpfd: + 1661050503506973 -1012 (3.11884e-305) class: Pos. norm. non-zero
; hwf : + 1661050503506973 -1012 (3.11884e-305) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000001011 #b0101111001101011011101110101001101110010110000011101)))
(assert (= r (fp #b0 #b00000001011 #b0101111001101011011101110101001101110010110000011101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
