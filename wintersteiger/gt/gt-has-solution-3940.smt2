(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.25228343160308330794805442565120756626129150390625p-9 {- 1136183568559396 -9 (-0.00244587)}
; Y = -1.4906566232916815817333144877920858561992645263671875p566 {- 2209720985823283 566 (-3.60044e+170)}
; -1.25228343160308330794805442565120756626129150390625p-9 > -1.4906566232916815817333144877920858561992645263671875p566 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111110110 #b0100000010010101101001011010000000001110110100100100)))
(assert (= y (fp #b1 #b11000110101 #b0111110110011011101011000010011010011010100000110011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
