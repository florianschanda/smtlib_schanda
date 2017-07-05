(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4536066683827890688718298406456597149372100830078125p457 {+ 2042862822701501 457 (5.40947e+137)}
; 1.4536066683827890688718298406456597149372100830078125p457 | == 1.4536066683827890688718298406456597149372100830078125p457
; [HW: 1.4536066683827890688718298406456597149372100830078125p457] 

; mpf : + 2042862822701501 457
; mpfd: + 2042862822701501 457 (5.40947e+137) class: Pos. norm. non-zero
; hwf : + 2042862822701501 457 (5.40947e+137) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111001000 #b0111010000011111100100010000110111110011100110111101)))
(assert (= r (fp #b0 #b10111001000 #b0111010000011111100100010000110111110011100110111101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
