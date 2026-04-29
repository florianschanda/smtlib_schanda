(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3188887664251554010519384974031709134578704833984375p-882 {+ 1436147329644967 -882 (4.09027e-266)}
; 1.3188887664251554010519384974031709134578704833984375p-882 | == 1.3188887664251554010519384974031709134578704833984375p-882
; [HW: 1.3188887664251554010519384974031709134578704833984375p-882] 

; mpf : + 1436147329644967 -882
; mpfd: + 1436147329644967 -882 (4.09027e-266) class: Pos. norm. non-zero
; hwf : + 1436147329644967 -882 (4.09027e-266) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010001101 #b0101000110100010101100011011011011011011100110100111)))
(assert (= r (fp #b0 #b00010001101 #b0101000110100010101100011011011011011011100110100111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
