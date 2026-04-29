(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.00991898973085714175113025703467428684234619140625p705 {- 44671158455780 705 (-1.69994e+212)}
; Y = -1.61866122843349558024783618748188018798828125p471 {- 2786202477841664 471 (-9.86924e+141)}
; -1.00991898973085714175113025703467428684234619140625p705 < -1.61866122843349558024783618748188018798828125p471 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011000000 #b0000001010001010000011010000100010000000110111100100)))
(assert (= y (fp #b1 #b10111010110 #b1001111001100000100101010000111101101100110100000000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
