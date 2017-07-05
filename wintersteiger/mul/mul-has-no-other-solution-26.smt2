(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9271543557105650368299620822654105722904205322265625p-715 {+ 4175532010893033 -715 (1.11807e-215)}
; Y = -1.2062376718838707656544784185825847089290618896484375p-760 {- 928811902245959 -760 (-1.98901e-229)}
; 1.9271543557105650368299620822654105722904205322265625p-715 * -1.2062376718838707656544784185825847089290618896484375p-760 == -zero
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
(assert (= x (fp #b0 #b00100110100 #b1110110101011001111111001110010000011110111011101001)))
(assert (= y (fp #b1 #b00100000111 #b0011010011001011111111011111011111110001110001000111)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
