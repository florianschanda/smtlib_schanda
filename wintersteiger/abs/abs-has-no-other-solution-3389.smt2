(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.831983798020879294909946111147291958332061767578125p725 {- 3746921922745122 725 (-3.23347e+218)}
; -1.831983798020879294909946111147291958332061767578125p725 | == 1.831983798020879294909946111147291958332061767578125p725
; [HW: 1.831983798020879294909946111147291958332061767578125p725] 

; mpf : + 3746921922745122 725
; mpfd: + 3746921922745122 725 (3.23347e+218) class: Pos. norm. non-zero
; hwf : + 3746921922745122 725 (3.23347e+218) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011010100 #b1101010011111100111000111110001101001101001100100010)))
(assert (= r (fp #b0 #b11011010100 #b1101010011111100111000111110001101001101001100100010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
