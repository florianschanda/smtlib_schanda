(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4049260679100481485903628708911128342151641845703125p579 {+ 1823624888552293 579 (2.77985e+174)}
; 1.4049260679100481485903628708911128342151641845703125p579 | == 1.4049260679100481485903628708911128342151641845703125p579
; [HW: 1.4049260679100481485903628708911128342151641845703125p579] 

; mpf : + 1823624888552293 579
; mpfd: + 1823624888552293 579 (2.77985e+174) class: Pos. norm. non-zero
; hwf : + 1823624888552293 579 (2.77985e+174) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001000010 #b0110011110101001001111000001101011111000101101100101)))
(assert (= r (fp #b0 #b11001000010 #b0110011110101001001111000001101011111000101101100101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
