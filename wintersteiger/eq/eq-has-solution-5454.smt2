(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2509641666996136333267486406839452683925628662109375p-474 {+ 1130242127631727 -474 (2.56464e-143)}
; Y = -1.207171555943976404279283087817020714282989501953125p-28 {- 933017742151058 -28 (-4.49706e-009)}
; 1.2509641666996136333267486406839452683925628662109375p-474 = -1.207171555943976404279283087817020714282989501953125p-28 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000100101 #b0100000000111111001100000000100001110001010101101111)))
(assert (= y (fp #b1 #b01111100011 #b0011010100001001001100011111000101110000110110010010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
