(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.72190057187919176584500746685080230236053466796875p314 {- 3251151146513676 314 (-5.74681e+094)}
; -1.72190057187919176584500746685080230236053466796875p314 | == 1.72190057187919176584500746685080230236053466796875p314
; [HW: 1.72190057187919176584500746685080230236053466796875p314] 

; mpf : + 3251151146513676 314
; mpfd: + 3251151146513676 314 (5.74681e+094) class: Pos. norm. non-zero
; hwf : + 3251151146513676 314 (5.74681e+094) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100111001 #b1011100011001110011110011101001100101111010100001100)))
(assert (= r (fp #b0 #b10100111001 #b1011100011001110011110011101001100101111010100001100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
