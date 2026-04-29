(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6937134011053573967586771686910651624202728271484375p-603 {- 3124207414720007 -603 (-5.10214e-182)}
; Y = -1.3956385596096463341808657787623815238475799560546875p-478 {- 1781797669631403 -478 (-1.78828e-144)}
; -1.6937134011053573967586771686910651624202728271484375p-603 < -1.3956385596096463341808657787623815238475799560546875p-478 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110100100 #b1011000110010111001100111001001010001011011000000111)))
(assert (= y (fp #b1 #b01000100001 #b0110010101001000100100011001001010001111010110101011)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
