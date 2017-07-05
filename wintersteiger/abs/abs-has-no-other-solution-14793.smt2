(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0457849016762577054606708770734257996082305908203125p-849 {- 206196866128389 -849 (-2.78597e-256)}
; -1.0457849016762577054606708770734257996082305908203125p-849 | == 1.0457849016762577054606708770734257996082305908203125p-849
; [HW: 1.0457849016762577054606708770734257996082305908203125p-849] 

; mpf : + 206196866128389 -849
; mpfd: + 206196866128389 -849 (2.78597e-256) class: Pos. norm. non-zero
; hwf : + 206196866128389 -849 (2.78597e-256) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010101110 #b0000101110111000100011110010111101011001101000000101)))
(assert (= r (fp #b0 #b00010101110 #b0000101110111000100011110010111101011001101000000101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
