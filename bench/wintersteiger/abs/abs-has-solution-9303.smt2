(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0137260345326335464477551795425824820995330810546875p-751 {- 61816564006443 -751 (-8.55843e-227)}
; -1.0137260345326335464477551795425824820995330810546875p-751 | == 1.0137260345326335464477551795425824820995330810546875p-751
; [HW: 1.0137260345326335464477551795425824820995330810546875p-751] 

; mpf : + 61816564006443 -751
; mpfd: + 61816564006443 -751 (8.55843e-227) class: Pos. norm. non-zero
; hwf : + 61816564006443 -751 (8.55843e-227) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100010000 #b0000001110000011100011001010010101101011111000101011)))
(assert (= r (fp #b0 #b00100010000 #b0000001110000011100011001010010101101011111000101011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
