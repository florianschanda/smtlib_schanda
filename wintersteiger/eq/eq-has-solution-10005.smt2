(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1375100853797988076365754750440828502178192138671875p-178 {+ 619290369276147 -178 (2.96904e-054)}
; Y = 1.661583409476051098607740641455166041851043701171875p-586 {+ 2979506796390846 -586 (6.56062e-177)}
; 1.1375100853797988076365754750440828502178192138671875p-178 = 1.661583409476051098607740641455166041851043701171875p-586 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101001101 #b0010001100110011110111000110011110010011100011110011)))
(assert (= y (fp #b0 #b00110110101 #b1010100101011101100001111100001101000110100110111110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
