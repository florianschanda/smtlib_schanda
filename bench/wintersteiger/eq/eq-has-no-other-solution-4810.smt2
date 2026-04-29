(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5102787788513747369023576538893394172191619873046875p798 {+ 2298091318290123 798 (2.51764e+240)}
; Y = -1.99080818377082469083916294039227068424224853515625p355 {- 4462203367225924 355 (-1.46109e+107)}
; 1.5102787788513747369023576538893394172191619873046875p798 = -1.99080818377082469083916294039227068424224853515625p355 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100011101 #b1000001010100001101000010100101100000010011011001011)))
(assert (= y (fp #b1 #b10101100010 #b1111110110100101100110101110100111100111101001000100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
