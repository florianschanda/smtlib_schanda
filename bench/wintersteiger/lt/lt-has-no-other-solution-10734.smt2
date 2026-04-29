(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.04461836050574419232361833564937114715576171875p-801 {+ 200943231747552 -801 (7.83305e-242)}
; Y = 1.97890905972517661126630628132261335849761962890625p-923 {+ 4408614476607908 -923 (2.79087e-278)}
; 1.04461836050574419232361833564937114715576171875p-801 < 1.97890905972517661126630628132261335849761962890625p-923 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011011110 #b0000101101101100000110111101111100101100010111100000)))
(assert (= y (fp #b0 #b00001100100 #b1111101010011001110010001011110101000111000110100100)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
