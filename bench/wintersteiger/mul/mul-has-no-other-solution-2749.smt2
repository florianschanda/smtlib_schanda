(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.805201778323854977514884012634865939617156982421875p-672 {- 3626306428817374 -672 (-9.21231e-203)}
; Y = -1.7663405438278594328238568778033368289470672607421875p-524 {- 3451290987622051 -524 (-3.2163e-158)}
; -1.805201778323854977514884012634865939617156982421875p-672 * -1.7663405438278594328238568778033368289470672607421875p-524 == +zero
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
(assert (= x (fp #b1 #b00101011111 #b1100111000100001101101000010100010010100111111011110)))
(assert (= y (fp #b1 #b00111110011 #b1100010000101110111001001101010101010110111010100011)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
