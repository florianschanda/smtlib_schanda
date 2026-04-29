(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9515836619276278884882458442007191479206085205078125p-120 {- 4285551825269117 -120 (-1.46821e-036)}
; -1.9515836619276278884882458442007191479206085205078125p-120 | == 1.9515836619276278884882458442007191479206085205078125p-120
; [HW: 1.9515836619276278884882458442007191479206085205078125p-120] 

; mpf : + 4285551825269117 -120
; mpfd: + 4285551825269117 -120 (1.46821e-036) class: Pos. norm. non-zero
; hwf : + 4285551825269117 -120 (1.46821e-036) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110000111 #b1111001110011010111111001010001101100011000101111101)))
(assert (= r (fp #b0 #b01110000111 #b1111001110011010111111001010001101100011000101111101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
