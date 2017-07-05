(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.614247801931513404127827016054652631282806396484375p672 {+ 2766326171891910 672 (3.1632e+202)}
; 1.614247801931513404127827016054652631282806396484375p672 | == 1.614247801931513404127827016054652631282806396484375p672
; [HW: 1.614247801931513404127827016054652631282806396484375p672] 

; mpf : + 2766326171891910 672
; mpfd: + 2766326171891910 672 (3.1632e+202) class: Pos. norm. non-zero
; hwf : + 2766326171891910 672 (3.1632e+202) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010011111 #b1001110100111111010110000000110011101111100011000110)))
(assert (= r (fp #b0 #b11010011111 #b1001110100111111010110000000110011101111100011000110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
