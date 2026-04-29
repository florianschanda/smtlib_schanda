(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.84306634782489187074361325358040630817413330078125p248 {+ 3796833289912788 248 (8.33643e+074)}
; Y = -1.1068562077992927239478149203932844102382659912109375p-726 {- 481237577627119 -726 (-3.13555e-219)}
; 1.84306634782489187074361325358040630817413330078125p248 < -1.1068562077992927239478149203932844102382659912109375p-726 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011110111 #b1101011111010011001100100011100001000100000111010100)))
(assert (= y (fp #b1 #b00100101001 #b0001101101011010111011011010110111011111010111101111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
