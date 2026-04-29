(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.455918409946649116903927279054187238216400146484375p-70 {- 2053273981147078 -70 (-1.23321e-021)}
; -1.455918409946649116903927279054187238216400146484375p-70 | == 1.455918409946649116903927279054187238216400146484375p-70
; [HW: 1.455918409946649116903927279054187238216400146484375p-70] 

; mpf : + 2053273981147078 -70
; mpfd: + 2053273981147078 -70 (1.23321e-021) class: Pos. norm. non-zero
; hwf : + 2053273981147078 -70 (1.23321e-021) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110111001 #b0111010010110111000100011010010001011101011111000110)))
(assert (= r (fp #b0 #b01110111001 #b0111010010110111000100011010010001011101011111000110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
