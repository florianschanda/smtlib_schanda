(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6485821149909234417663128624553792178630828857421875p-33 {+ 2920954171392291 -33 (1.9192e-010)}
; 1.6485821149909234417663128624553792178630828857421875p-33 S == 1.815809524697413745997209844063036143779754638671875p-17
; [HW: 1.815809524697413745997209844063036143779754638671875p-17] 

; mpf : + 3674079471432574 -17
; mpfd: + 3674079471432574 -17 (1.38535e-005) class: Pos. norm. non-zero
; hwf : + 3674079471432574 -17 (1.38535e-005) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111011110 #b1010011000001001011110100011110010101000000100100011)))
(assert (= r (fp #b0 #b01111101110 #b1101000011011000111001001001110001010111001101111110)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
