(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3280121172088985570525210277992300689220428466796875p-369 {- 1477235248835003 -369 (-1.10442e-111)}
; -1.3280121172088985570525210277992300689220428466796875p-369 | == 1.3280121172088985570525210277992300689220428466796875p-369
; [HW: 1.3280121172088985570525210277992300689220428466796875p-369] 

; mpf : + 1477235248835003 -369
; mpfd: + 1477235248835003 -369 (1.10442e-111) class: Pos. norm. non-zero
; hwf : + 1477235248835003 -369 (1.10442e-111) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010001110 #b0101001111111000100110100010010000011010100110111011)))
(assert (= r (fp #b0 #b01010001110 #b0101001111111000100110100010010000011010100110111011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
