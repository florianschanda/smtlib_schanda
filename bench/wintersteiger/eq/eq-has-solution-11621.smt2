(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = 1.13096940976465898387459674268029630184173583984375p-367 {+ 589833785013052 -367 (3.7622e-111)}
; +zero = 1.13096940976465898387459674268029630184173583984375p-367 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b01010010000 #b0010000110000111001101100001001110110111001100111100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
