(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.22350377092545858914718337473459541797637939453125 1012 {- 1006571499455796 1012 (-5.36983e+304)}
; -1.22350377092545858914718337473459541797637939453125 1012 I == -1.22350377092545858914718337473459541797637939453125 1012
; [HW: -1.22350377092545858914718337473459541797637939453125 1012] 

; mpf : - 1006571499455796 1012
; mpfd: - 1006571499455796 1012 (-5.36983e+304) class: Neg. norm. non-zero
; hwf : - 1006571499455796 1012 (-5.36983e+304) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111110011 #b0011100100110111100010110000101010101000010100110100)))
(assert (= r (fp #b1 #b11111110011 #b0011100100110111100010110000101010101000010100110100)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
