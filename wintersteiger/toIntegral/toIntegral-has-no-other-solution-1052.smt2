(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.58715873559792175484517429140396416187286376953125 355 {- 2644327862846132 355 (-1.16485e+107)}
; -1.58715873559792175484517429140396416187286376953125 355 I == -1.58715873559792175484517429140396416187286376953125 355
; [HW: -1.58715873559792175484517429140396416187286376953125 355] 

; mpf : - 2644327862846132 355
; mpfd: - 2644327862846132 355 (-1.16485e+107) class: Neg. norm. non-zero
; hwf : - 2644327862846132 355 (-1.16485e+107) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101100010 #b1001011001010000000010001110111011110100001010110100)))
(assert (= r (fp #b1 #b10101100010 #b1001011001010000000010001110111011110100001010110100)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
