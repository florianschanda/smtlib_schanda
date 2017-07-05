(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3963377996126318247860353949363343417644500732421875p406 {- 1784946766648291 406 (-2.30764e+122)}
; -1.3963377996126318247860353949363343417644500732421875p406 | == 1.3963377996126318247860353949363343417644500732421875p406
; [HW: 1.3963377996126318247860353949363343417644500732421875p406] 

; mpf : + 1784946766648291 406
; mpfd: + 1784946766648291 406 (2.30764e+122) class: Pos. norm. non-zero
; hwf : + 1784946766648291 406 (2.30764e+122) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110010101 #b0110010101110110011001001101111110000001001111100011)))
(assert (= r (fp #b0 #b10110010101 #b0110010101110110011001001101111110000001001111100011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
