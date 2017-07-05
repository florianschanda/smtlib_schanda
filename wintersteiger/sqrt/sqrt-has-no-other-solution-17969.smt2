(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7274057606259913821844520498416386544704437255859375p-14 {+ 3275944312502367 -14 (0.000105432)}
; 1.7274057606259913821844520498416386544704437255859375p-14 S == 1.31430809197310782820977692608721554279327392578125p-7
; [HW: 1.31430809197310782820977692608721554279327392578125p-7] 

; mpf : + 1415517805889620 -7
; mpfd: + 1415517805889620 -7 (0.010268) class: Pos. norm. non-zero
; hwf : + 1415517805889620 -7 (0.010268) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111110001 #b1011101000110111010000111001000011001111100001011111)))
(assert (= r (fp #b0 #b01111111000 #b0101000001110110011111101011111111100100100001010100)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
