(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.746256793193182499379645378212444484233856201171875p270 {- 3360841815747518 270 (-3.31289e+081)}
; -1.746256793193182499379645378212444484233856201171875p270 | == 1.746256793193182499379645378212444484233856201171875p270
; [HW: 1.746256793193182499379645378212444484233856201171875p270] 

; mpf : + 3360841815747518 270
; mpfd: + 3360841815747518 270 (3.31289e+081) class: Pos. norm. non-zero
; hwf : + 3360841815747518 270 (3.31289e+081) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100001101 #b1011111100001010101011110110100100101110101110111110)))
(assert (= r (fp #b0 #b10100001101 #b1011111100001010101011110110100100101110101110111110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
