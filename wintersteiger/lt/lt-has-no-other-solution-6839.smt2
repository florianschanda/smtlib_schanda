(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9180399057103831861326170837855897843837738037109375p605 {+ 4134484177268527 605 (2.54686e+182)}
; Y = -1.3751307877427401127334860575501807034015655517578125p852 {- 1689438875893405 852 (-4.12953e+256)}
; 1.9180399057103831861326170837855897843837738037109375p605 < -1.3751307877427401127334860575501807034015655517578125p852 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001011100 #b1110101100000100101010011100101101110010111100101111)))
(assert (= y (fp #b1 #b11101010011 #b0110000000001000100100100100000100010011111010011101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
