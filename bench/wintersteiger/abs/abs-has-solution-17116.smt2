(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.06062024812980393306816040421836078166961669921875p14 {- 273009326888492 14 (-17377.2)}
; -1.06062024812980393306816040421836078166961669921875p14 | == 1.06062024812980393306816040421836078166961669921875p14
; [HW: 1.06062024812980393306816040421836078166961669921875p14] 

; mpf : + 273009326888492 14
; mpfd: + 273009326888492 14 (17377.2) class: Pos. norm. non-zero
; hwf : + 273009326888492 14 (17377.2) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000001101 #b0000111110000100110011101111111100110001011000101100)))
(assert (= r (fp #b0 #b10000001101 #b0000111110000100110011101111111100110001011000101100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
