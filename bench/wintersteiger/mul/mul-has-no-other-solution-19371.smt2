(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.14004663359437063974155535106547176837921142578125p-915 {+ 630713966870100 -915 (4.11601e-276)}
; Y = 1.37629738535884182937252262490801513195037841796875p-514 {+ 1694692764482572 -514 (2.56622e-155)}
; 1.14004663359437063974155535106547176837921142578125p-915 * 1.37629738535884182937252262490801513195037841796875p-514 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001101100 #b0010001111011010000110001001111100110011111001010100)))
(assert (= y (fp #b0 #b00111111101 #b0110000001010101000001101000001110101111110000001100)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
