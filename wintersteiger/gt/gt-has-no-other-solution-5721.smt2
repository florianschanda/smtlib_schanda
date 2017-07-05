(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.945018398595053543687072306056506931781768798828125p758 {- 4255984507770946 758 (-2.9489e+228)}
; Y = 1.5377575057435424188412298462935723364353179931640625p-165 {+ 2421844502482305 -165 (3.28805e-050)}
; -1.945018398595053543687072306056506931781768798828125p758 > 1.5377575057435424188412298462935723364353179931640625p-165 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011110101 #b1111000111101100101110011100110000010101100001000010)))
(assert (= y (fp #b0 #b01101011010 #b1000100110101010011110011101010001011000110110000001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
