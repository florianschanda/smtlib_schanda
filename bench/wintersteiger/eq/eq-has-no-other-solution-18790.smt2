(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6822856970545760901813991949893534183502197265625p49 {- 3072741611015208 49 (-9.47043e+014)}
; Y = 1.7946708582709642865182786408695392310619354248046875p-339 {+ 3578879381191307 -339 (1.60257e-102)}
; -1.6822856970545760901813991949893534183502197265625p49 = 1.7946708582709642865182786408695392310619354248046875p-339 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000110000 #b1010111010101010010001101000001101100000110000101000)))
(assert (= y (fp #b0 #b01010101100 #b1100101101101111100011001010001101011011101010001011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
