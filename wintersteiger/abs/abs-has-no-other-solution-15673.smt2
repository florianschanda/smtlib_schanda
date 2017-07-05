(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0199944294863616534030370530672371387481689453125p-237 {+ 90046905184264 -237 (4.61837e-072)}
; 1.0199944294863616534030370530672371387481689453125p-237 | == 1.0199944294863616534030370530672371387481689453125p-237
; [HW: 1.0199944294863616534030370530672371387481689453125p-237] 

; mpf : + 90046905184264 -237
; mpfd: + 90046905184264 -237 (4.61837e-072) class: Pos. norm. non-zero
; hwf : + 90046905184264 -237 (4.61837e-072) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100010010 #b0000010100011110010110101101110010111111000000001000)))
(assert (= r (fp #b0 #b01100010010 #b0000010100011110010110101101110010111111000000001000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
