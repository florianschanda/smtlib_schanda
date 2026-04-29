(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5570837179336460831535760007682256400585174560546875 584 {- 2508882024500139 584 (-9.85892e+175)}
; -1.5570837179336460831535760007682256400585174560546875 584 I == -1.5570837179336460831535760007682256400585174560546875 584
; [HW: -1.5570837179336460831535760007682256400585174560546875 584] 

; mpf : - 2508882024500139 584
; mpfd: - 2508882024500139 584 (-9.85892e+175) class: Neg. norm. non-zero
; hwf : - 2508882024500139 584 (-9.85892e+175) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001000111 #b1000111010011101000010011101110110101000101110101011)))
(assert (= r (fp #b1 #b11001000111 #b1000111010011101000010011101110110101000101110101011)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
