(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4839260406813139514525801132549531757831573486328125p-298 {+ 2179409136487245 -298 (2.91389e-090)}
; Y = 1.8843539659263905949870832046144641935825347900390625p845 {+ 3982776191409713 845 (4.42088e+254)}
; 1.4839260406813139514525801132549531757831573486328125p-298 < 1.8843539659263905949870832046144641935825347900390625p845 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011010101 #b0111101111100010100100111011011001101000101101001101)))
(assert (= y (fp #b0 #b11101001100 #b1110001001100101000001011000000110111101111000110001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
