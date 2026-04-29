(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0125668713582880453571988255134783685207366943359375p986 {- 56596157166399 986 (-6.62216e+296)}
; Y = -1.155703883161358636044724335079081356525421142578125p-399 {- 701227950185634 -399 (-8.95114e-121)}
; -1.0125668713582880453571988255134783685207366943359375p986 = -1.155703883161358636044724335079081356525421142578125p-399 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111011001 #b0000001100110111100101010001110101111111001100111111)))
(assert (= y (fp #b1 #b01001110000 #b0010011111011100001101011010111000001001110010100010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
