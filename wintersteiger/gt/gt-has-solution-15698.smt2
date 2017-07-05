(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.95245173228703361445468544843606650829315185546875p75 {- 4289461266616268 75 (-7.37615e+022)}
; Y = 1.60755932877235974132190676755271852016448974609375p856 {+ 2736203966664668 856 (7.72402e+257)}
; -1.95245173228703361445468544843606650829315185546875p75 > 1.60755932877235974132190676755271852016448974609375p856 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001001010 #b1111001111010011111000000111000100110000111111001100)))
(assert (= y (fp #b0 #b11101010111 #b1001101110001001000000100001011101110100111111011100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
