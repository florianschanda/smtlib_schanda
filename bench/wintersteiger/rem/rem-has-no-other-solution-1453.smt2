(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = 1.7169385449323752990125058204284869134426116943359375p-25 {+ 3228804163804991 -25 (5.11688e-008)}
; -zero % 1.7169385449323752990125058204284869134426116943359375p-25 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b01111100110 #b1011011110001001010010001101001110111001111100111111)))
(assert (= r (_ -zero 11 53)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
