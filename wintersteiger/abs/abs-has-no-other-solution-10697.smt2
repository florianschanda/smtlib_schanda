(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4731630066148497792966054475982673466205596923828125p-665 {+ 2130936740276141 -665 (9.62285e-201)}
; 1.4731630066148497792966054475982673466205596923828125p-665 | == 1.4731630066148497792966054475982673466205596923828125p-665
; [HW: 1.4731630066148497792966054475982673466205596923828125p-665] 

; mpf : + 2130936740276141 -665
; mpfd: + 2130936740276141 -665 (9.62285e-201) class: Pos. norm. non-zero
; hwf : + 2130936740276141 -665 (9.62285e-201) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101100110 #b0111100100100001001101011111011100010110011110101101)))
(assert (= r (fp #b0 #b00101100110 #b0111100100100001001101011111011100010110011110101101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
