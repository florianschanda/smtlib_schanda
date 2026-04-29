(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5204529308243139862355519653647206723690032958984375p-629 {- 2343911625324263 -629 (-6.82505e-190)}
; -1.5204529308243139862355519653647206723690032958984375p-629 | == 1.5204529308243139862355519653647206723690032958984375p-629
; [HW: 1.5204529308243139862355519653647206723690032958984375p-629] 

; mpf : + 2343911625324263 -629
; mpfd: + 2343911625324263 -629 (6.82505e-190) class: Pos. norm. non-zero
; hwf : + 2343911625324263 -629 (6.82505e-190) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110001010 #b1000010100111100011001110011110011111111011011100111)))
(assert (= r (fp #b0 #b00110001010 #b1000010100111100011001110011110011111111011011100111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
