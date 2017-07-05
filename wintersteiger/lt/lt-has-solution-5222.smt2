(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2850784510905184365725517636747099459171295166015625p513 {- 1283879206102617 513 (-3.44602e+154)}
; Y = 1.222604132314991876029353079502470791339874267578125p-482 {+ 1002519887344930 -482 (9.79102e-146)}
; -1.2850784510905184365725517636747099459171295166015625p513 < 1.222604132314991876029353079502470791339874267578125p-482 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000000000 #b0100100011111010111001101100000000111010011001011001)))
(assert (= y (fp #b0 #b01000011101 #b0011100011111100100101011001110000111111010100100010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
