(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3150843273998589211259968578815460205078125p-911 {- 1419013659468288 -911 (-7.59675e-275)}
; Y = -1.922374941621578958717009300016798079013824462890625p859 {- 4154007443382826 859 (-7.38932e+258)}
; -1.3150843273998589211259968578815460205078125p-911 / -1.922374941621578958717009300016798079013824462890625p859 == +zero
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
(assert (= x (fp #b1 #b00001110000 #b0101000010101001010111011101000110101010001000000000)))
(assert (= y (fp #b1 #b11101011010 #b1110110000100000110000111010000011101010001000101010)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
