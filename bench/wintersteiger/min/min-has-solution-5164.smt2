(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = -1.872553662347586023173562352894805371761322021484375p-763 {- 3929632348609350 -763 (-3.85965e-230)}
; -zero m -1.872553662347586023173562352894805371761322021484375p-763 == -1.872553662347586023173562352894805371761322021484375p-763
; [HW: -1.872553662347586023173562352894805371761322021484375p-763] 

; mpf : - 3929632348609350 -763
; mpfd: - 3929632348609350 -763 (-3.85965e-230) class: Neg. norm. non-zero
; hwf : - 3929632348609350 -763 (-3.85965e-230) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b00100000100 #b1101111101011111101011010100001111001001101101000110)))
(assert (= r (fp #b1 #b00100000100 #b1101111101011111101011010100001111001001101101000110)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
