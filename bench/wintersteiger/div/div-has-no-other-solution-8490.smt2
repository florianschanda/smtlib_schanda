(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8288255610086185942719794184085913002490997314453125p-689 {+ 3732698487713557 -689 (7.12041e-208)}
; Y = -1.3253871184014751616331295736017636954784393310546875p665 {- 1465413305184043 665 (-2.02904e+200)}
; 1.8288255610086185942719794184085913002490997314453125p-689 / -1.3253871184014751616331295736017636954784393310546875p665 == -zero
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
(assert (= x (fp #b0 #b00101001110 #b1101010000101101111010010111011010011110111100010101)))
(assert (= y (fp #b1 #b11010011000 #b0101001101001100100100011111100000010010111100101011)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
