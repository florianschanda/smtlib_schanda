(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.33838585227063422422588701010681688785552978515625p-668 {- 1523954398193476 -668 (-1.09281e-201)}
; -1.33838585227063422422588701010681688785552978515625p-668 | == 1.33838585227063422422588701010681688785552978515625p-668
; [HW: 1.33838585227063422422588701010681688785552978515625p-668] 

; mpf : + 1523954398193476 -668
; mpfd: + 1523954398193476 -668 (1.09281e-201) class: Pos. norm. non-zero
; hwf : + 1523954398193476 -668 (1.09281e-201) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101100011 #b0101011010100000011101001000100011101110011101000100)))
(assert (= r (fp #b0 #b00101100011 #b0101011010100000011101001000100011101110011101000100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
