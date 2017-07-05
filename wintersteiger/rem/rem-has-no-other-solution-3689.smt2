(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2116611127255094704224802626413293182849884033203125p-255 {+ 953236908399429 -255 (2.09282e-077)}
; Y = 1.9534442341630702255628193597658537328243255615234375p510 {+ 4293931097695351 510 (6.54785e+153)}
; 1.2116611127255094704224802626413293182849884033203125p-255 % 1.9534442341630702255628193597658537328243255615234375p510 == 1.2116611127255094704224802626413293182849884033203125p-255
; [HW: 1.2116611127255094704224802626413293182849884033203125p-255] 

; mpf : + 953236908399429 -255
; mpfd: + 953236908399429 -255 (2.09282e-077) class: Pos. norm. non-zero
; hwf : + 953236908399429 -255 (2.09282e-077) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100000000 #b0011011000101111011011000011010011111101101101000101)))
(assert (= y (fp #b0 #b10111111101 #b1111010000010100111010111101110001001010010001110111)))
(assert (= r (fp #b0 #b01100000000 #x362f6c34fdb45)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
