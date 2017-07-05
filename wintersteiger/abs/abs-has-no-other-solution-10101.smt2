(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5171799984959417617602639438700862228870391845703125p-511 {+ 2329171648509797 -511 (2.26313e-154)}
; 1.5171799984959417617602639438700862228870391845703125p-511 | == 1.5171799984959417617602639438700862228870391845703125p-511
; [HW: 1.5171799984959417617602639438700862228870391845703125p-511] 

; mpf : + 2329171648509797 -511
; mpfd: + 2329171648509797 -511 (2.26313e-154) class: Pos. norm. non-zero
; hwf : + 2329171648509797 -511 (2.26313e-154) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000000000 #b1000010001100101111010001000101110101111011101100101)))
(assert (= r (fp #b0 #b01000000000 #b1000010001100101111010001000101110101111011101100101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
