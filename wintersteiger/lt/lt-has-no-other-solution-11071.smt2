(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1594191048029254265117060640477575361728668212890625p-952 {+ 717959820986193 -952 (3.04568e-287)}
; Y = 1.812971970796216414356649693218059837818145751953125p111 {+ 3661300264740498 111 (4.70674e+033)}
; 1.1594191048029254265117060640477575361728668212890625p-952 < 1.812971970796216414356649693218059837818145751953125p111 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001000111 #b0010100011001111101100001100000101111100011101010001)))
(assert (= y (fp #b0 #b10001101110 #b1101000000011110111011100101101100100010011010010010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
