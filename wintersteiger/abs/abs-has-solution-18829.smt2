(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.013370937903305790683816667296923696994781494140625p-916 {- 60217350958922 -916 (-1.82933e-276)}
; -1.013370937903305790683816667296923696994781494140625p-916 | == 1.013370937903305790683816667296923696994781494140625p-916
; [HW: 1.013370937903305790683816667296923696994781494140625p-916] 

; mpf : + 60217350958922 -916
; mpfd: + 60217350958922 -916 (1.82933e-276) class: Pos. norm. non-zero
; hwf : + 60217350958922 -916 (1.82933e-276) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001101011 #b0000001101101100010001110001110100000010111101001010)))
(assert (= r (fp #b0 #b00001101011 #b0000001101101100010001110001110100000010111101001010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
