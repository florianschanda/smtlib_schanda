(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.59110247106804703065563444397412240505218505859375p-1016 {- 2662088868439836 -1016 (-2.26581e-306)}
; -1.59110247106804703065563444397412240505218505859375p-1016 | == 1.59110247106804703065563444397412240505218505859375p-1016
; [HW: 1.59110247106804703065563444397412240505218505859375p-1016] 

; mpf : + 2662088868439836 -1016
; mpfd: + 2662088868439836 -1016 (2.26581e-306) class: Pos. norm. non-zero
; hwf : + 2662088868439836 -1016 (2.26581e-306) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000111 #b1001011101010010011111011101010111010010011100011100)))
(assert (= r (fp #b0 #b00000000111 #b1001011101010010011111011101010111010010011100011100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
