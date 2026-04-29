(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.392284543516828509979177397326566278934478759765625p-932 {- 1766692524005594 -932 (-3.83506e-281)}
; Y = 1.8862493938353745992486665272735990583896636962890625p-194 {+ 3991312439834321 -194 (7.51242e-059)}
; -1.392284543516828509979177397326566278934478759765625p-932 < 1.8862493938353745992486665272735990583896636962890625p-194 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001011011 #b0110010001101100110000101000010100100001100011011010)))
(assert (= y (fp #b0 #b01100111101 #b1110001011100001001111011000001010011111011011010001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
