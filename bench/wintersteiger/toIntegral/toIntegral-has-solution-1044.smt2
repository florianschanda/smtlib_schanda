(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.123934979225217123399716001586057245731353759765625 507 {- 558153526256858 507 (-4.70922e+152)}
; -1.123934979225217123399716001586057245731353759765625 507 I == -1.123934979225217123399716001586057245731353759765625 507
; [HW: -1.123934979225217123399716001586057245731353759765625 507] 

; mpf : - 558153526256858 507
; mpfd: - 558153526256858 507 (-4.70922e+152) class: Neg. norm. non-zero
; hwf : - 558153526256858 507 (-4.70922e+152) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111111010 #b0001111110111010001100111110101010011010010011011010)))
(assert (= r (fp #b1 #b10111111010 #b0001111110111010001100111110101010011010010011011010)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
