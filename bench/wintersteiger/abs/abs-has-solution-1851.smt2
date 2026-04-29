(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1490539719130337115160500616184435784816741943359375p-443 {+ 671279412365631 -443 (5.05886e-134)}
; 1.1490539719130337115160500616184435784816741943359375p-443 | == 1.1490539719130337115160500616184435784816741943359375p-443
; [HW: 1.1490539719130337115160500616184435784816741943359375p-443] 

; mpf : + 671279412365631 -443
; mpfd: + 671279412365631 -443 (5.05886e-134) class: Pos. norm. non-zero
; hwf : + 671279412365631 -443 (5.05886e-134) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001000100 #b0010011000101000011001101010111010110100100100111111)))
(assert (= r (fp #b0 #b01001000100 #b0010011000101000011001101010111010110100100100111111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
