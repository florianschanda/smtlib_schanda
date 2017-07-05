(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3270119246096954146452162603964097797870635986328125p-887 {+ 1472730781817933 -887 (1.28608e-267)}
; Y = 1.58557742946823054808191955089569091796875p-920 {+ 2637206293149696 -920 (1.78892e-277)}
; 1.3270119246096954146452162603964097797870635986328125p-887 = 1.58557742946823054808191955089569091796875p-920 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010001000 #b0101001110110111000011011011000110011001110001001101)))
(assert (= y (fp #b0 #b00001100111 #b1001010111101000011001110000010011010111100000000000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
