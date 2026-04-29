(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1144483673535543477584042193484492599964141845703125p-813 {- 515429624566629 -813 (-2.0402e-245)}
; Y = -1.9017873717073083827955315427971072494983673095703125p966 {- 4061289271188453 966 (-1.18614e+291)}
; -1.1144483673535543477584042193484492599964141845703125p-813 = -1.9017873717073083827955315427971072494983673095703125p966 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011010010 #b0001110101001100011111001111101011011101001101100101)))
(assert (= y (fp #b1 #b11111000101 #b1110011011011011100010011000010101101101101111100101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
