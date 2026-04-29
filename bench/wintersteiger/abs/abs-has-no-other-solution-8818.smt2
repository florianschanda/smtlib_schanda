(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.73883046173826993907596261124126613140106201171875p-269 {- 3327396592174444 -269 (-1.83311e-081)}
; -1.73883046173826993907596261124126613140106201171875p-269 | == 1.73883046173826993907596261124126613140106201171875p-269
; [HW: 1.73883046173826993907596261124126613140106201171875p-269] 

; mpf : + 3327396592174444 -269
; mpfd: + 3327396592174444 -269 (1.83311e-081) class: Pos. norm. non-zero
; hwf : + 3327396592174444 -269 (1.83311e-081) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011110010 #b1011110100100011111111100011111001110100010101101100)))
(assert (= r (fp #b0 #b01011110010 #b1011110100100011111111100011111001110100010101101100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
