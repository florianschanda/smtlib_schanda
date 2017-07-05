(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.786487517435065175419595107086934149265289306640625p-478 {- 3542024890452106 -478 (-2.28909e-144)}
; Y = 1.3661388553344995244742676732130348682403564453125p308 {+ 1648942812450312 308 (7.12416e+092)}
; -1.786487517435065175419595107086934149265289306640625p-478 < 1.3661388553344995244742676732130348682403564453125p308 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000100001 #b1100100101010111001111101111011000011000100010001010)))
(assert (= y (fp #b0 #b10100110011 #b0101110110111011010001101010100101110100111000001000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
