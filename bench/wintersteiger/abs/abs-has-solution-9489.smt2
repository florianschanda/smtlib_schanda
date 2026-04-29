(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6410731088671379751531276269815862178802490234375p-1015 {- 2887136614211288 -1015 (-4.67393e-306)}
; -1.6410731088671379751531276269815862178802490234375p-1015 | == 1.6410731088671379751531276269815862178802490234375p-1015
; [HW: 1.6410731088671379751531276269815862178802490234375p-1015] 

; mpf : + 2887136614211288 -1015
; mpfd: + 2887136614211288 -1015 (4.67393e-306) class: Pos. norm. non-zero
; hwf : + 2887136614211288 -1015 (4.67393e-306) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000001000 #b1010010000011101010111100000010011101101111011011000)))
(assert (= r (fp #b0 #b00000001000 #b1010010000011101010111100000010011101101111011011000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
