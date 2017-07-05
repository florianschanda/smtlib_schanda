(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.559061643306211220050272459047846496105194091796875p4 {+ 2517789808470990 4 (24.945)}
; 1.559061643306211220050272459047846496105194091796875p4 | == 1.559061643306211220050272459047846496105194091796875p4
; [HW: 1.559061643306211220050272459047846496105194091796875p4] 

; mpf : + 2517789808470990 4
; mpfd: + 2517789808470990 4 (24.945) class: Pos. norm. non-zero
; hwf : + 2517789808470990 4 (24.945) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000000011 #b1000111100011110101010011111001001110010101111001110)))
(assert (= r (fp #b0 #b10000000011 #b1000111100011110101010011111001001110010101111001110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
