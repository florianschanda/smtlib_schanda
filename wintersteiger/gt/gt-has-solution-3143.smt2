(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1514985831156689943810533804935403168201446533203125p-176 {- 682288962466885 -176 (-1.20222e-053)}
; Y = 1.0887071251800481963556421760586090385913848876953125p-891 {+ 399501375905973 -891 (6.59455e-269)}
; -1.1514985831156689943810533804935403168201446533203125p-176 > 1.0887071251800481963556421760586090385913848876953125p-891 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101001111 #b0010011011001000100111000111001111011111010001000101)))
(assert (= y (fp #b0 #b00010000100 #b0001011010110101100000101001100110010010000010110101)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
