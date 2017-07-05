(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7496705627651036873970724627724848687648773193359375p862 {- 3376216067119551 862 (-5.38038e+259)}
; Y = -1.38387315399409605021219249465502798557281494140625p-539 {- 1728810993285348 -539 (-7.69004e-163)}
; -1.7496705627651036873970724627724848687648773193359375p862 < -1.38387315399409605021219249465502798557281494140625p-539 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101011101 #b1011111111101010011010001111010111011001100110111111)))
(assert (= y (fp #b1 #b00111100100 #b0110001001000101100000101101001000110111100011100100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
