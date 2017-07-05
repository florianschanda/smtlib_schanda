(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.117523676990670455921872417093254625797271728515625p-20 {- 529279587902394 -20 (-1.06575e-006)}
; Y = -1.6575213364499996604450871018343605101108551025390625p-832 {- 2961212845824369 -832 (-5.78766e-251)}
; -1.117523676990670455921872417093254625797271728515625p-20 < -1.6575213364499996604450871018343605101108551025390625p-832 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111101011 #b0001111000010110000010000001110100101110001110111010)))
(assert (= y (fp #b1 #b00010111111 #b1010100001010011010100010111110001111001100101110001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
