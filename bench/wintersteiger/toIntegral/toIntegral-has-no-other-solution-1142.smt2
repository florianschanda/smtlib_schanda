(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1842989481244357019562585264793597161769866943359375 113 {- 830008674097983 113 (-1.22985e+034)}
; -1.1842989481244357019562585264793597161769866943359375 113 I == -1.1842989481244357019562585264793597161769866943359375 113
; [HW: -1.1842989481244357019562585264793597161769866943359375 113] 

; mpf : - 830008674097983 113
; mpfd: - 830008674097983 113 (-1.22985e+034) class: Neg. norm. non-zero
; hwf : - 830008674097983 113 (-1.22985e+034) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001110000 #b0010111100101110001101110100001011100001101100111111)))
(assert (= r (fp #b1 #b10001110000 #b0010111100101110001101110100001011100001101100111111)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
