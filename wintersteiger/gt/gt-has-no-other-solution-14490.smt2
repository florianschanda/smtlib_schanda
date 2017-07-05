(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.24993385844091609016004440491087734699249267578125p-34 {- 1125602031741780 -34 (-7.27557e-011)}
; Y = 1.8646277663679924341266769260982982814311981201171875p714 {+ 3893937286429075 714 (1.60697e+215)}
; -1.24993385844091609016004440491087734699249267578125p-34 > 1.8646277663679924341266769260982982814311981201171875p714 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111011101 #b0011111111111011101010100101010000101010101101010100)))
(assert (= y (fp #b0 #b11011001001 #b1101110101011000001111101100101111000011100110010011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
