(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3749663752207741396205165074206888675689697265625p32 {- 1688698427720744 32 (-5.90544e+009)}
; -1.3749663752207741396205165074206888675689697265625p32 | == 1.3749663752207741396205165074206888675689697265625p32
; [HW: 1.3749663752207741396205165074206888675689697265625p32] 

; mpf : + 1688698427720744 32
; mpfd: + 1688698427720744 32 (5.90544e+009) class: Pos. norm. non-zero
; hwf : + 1688698427720744 32 (5.90544e+009) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000011111 #b0101111111111101110010111101111010101100010000101000)))
(assert (= r (fp #b0 #b10000011111 #b0101111111111101110010111101111010101100010000101000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
