(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8099424546191025253705220166011713445186614990234375p-569 {- 3647656536814135 -569 (-9.36693e-172)}
; Y = 1.7580059485401433594375930624664761126041412353515625p-611 {+ 3413755307390009 -611 (2.06868e-184)}
; -1.8099424546191025253705220166011713445186614990234375p-569 < 1.7580059485401433594375930624664761126041412353515625p-611 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111000110 #b1100111101011000011000111000001000111011001000110111)))
(assert (= y (fp #b0 #b00110011100 #b1100001000001100101011011000011100100111010000111001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
