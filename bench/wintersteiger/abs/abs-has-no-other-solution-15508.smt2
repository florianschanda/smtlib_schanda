(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4589480497565414651717219385318458080291748046875p352 {- 2066918265865976 352 (-1.33844e+106)}
; -1.4589480497565414651717219385318458080291748046875p352 | == 1.4589480497565414651717219385318458080291748046875p352
; [HW: 1.4589480497565414651717219385318458080291748046875p352] 

; mpf : + 2066918265865976 352
; mpfd: + 2066918265865976 352 (1.33844e+106) class: Pos. norm. non-zero
; hwf : + 2066918265865976 352 (1.33844e+106) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101011111 #b0111010101111101100111101001000001000100011011111000)))
(assert (= r (fp #b0 #b10101011111 #b0111010101111101100111101001000001000100011011111000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
