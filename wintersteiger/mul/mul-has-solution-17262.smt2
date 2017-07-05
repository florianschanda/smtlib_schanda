(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0830812016712398904161318569094873964786529541015625p-972 {- 374164468888089 -972 (-2.71335e-293)}
; Y = -1.6172990969873513034116285780328325927257537841796875p-692 {- 2780067983168379 -692 (-7.87106e-209)}
; -1.0830812016712398904161318569094873964786529541015625p-972 * -1.6172990969873513034116285780328325927257537841796875p-692 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000110011 #b0001010101000100110011110100010000010111001000011001)))
(assert (= y (fp #b1 #b00101001011 #b1001111000000111010100000100100101101001001101111011)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
