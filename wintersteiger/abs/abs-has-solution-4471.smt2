(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.75820438589431393694439975661225616931915283203125p672 {- 3414648989784308 672 (-3.4453e+202)}
; -1.75820438589431393694439975661225616931915283203125p672 | == 1.75820438589431393694439975661225616931915283203125p672
; [HW: 1.75820438589431393694439975661225616931915283203125p672] 

; mpf : + 3414648989784308 672
; mpfd: + 3414648989784308 672 (3.4453e+202) class: Pos. norm. non-zero
; hwf : + 3414648989784308 672 (3.4453e+202) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010011111 #b1100001000011001101011101100000100011001100011110100)))
(assert (= r (fp #b0 #b11010011111 #b1100001000011001101011101100000100011001100011110100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
