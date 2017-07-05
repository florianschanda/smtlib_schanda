(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.531643075621120342333369990228675305843353271484375p502 {+ 2394307557261382 502 (2.00547e+151)}
; Y = -zero {- 0 -1023 (-0)}
; 1.531643075621120342333369990228675305843353271484375p502 > -zero == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111110101 #b1000100000011001110000101011011011110000000001000110)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
