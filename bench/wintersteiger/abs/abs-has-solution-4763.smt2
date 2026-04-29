(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9460081837665281767613123520277440547943115234375p-166 {+ 4260442103900376 -166 (2.08049e-050)}
; 1.9460081837665281767613123520277440547943115234375p-166 | == 1.9460081837665281767613123520277440547943115234375p-166
; [HW: 1.9460081837665281767613123520277440547943115234375p-166] 

; mpf : + 4260442103900376 -166
; mpfd: + 4260442103900376 -166 (2.08049e-050) class: Pos. norm. non-zero
; hwf : + 4260442103900376 -166 (2.08049e-050) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101011001 #b1111001000101101100101111010001100000110100011011000)))
(assert (= r (fp #b0 #b01101011001 #b1111001000101101100101111010001100000110100011011000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
