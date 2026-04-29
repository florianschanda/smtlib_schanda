(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9685566631043027729930372515809722244739532470703125p-239 {+ 4361991427043749 -239 (2.22833e-072)}
; 1.9685566631043027729930372515809722244739532470703125p-239 S == 1.984216048269090482136789432843215763568878173828125p-120
; [HW: 1.984216048269090482136789432843215763568878173828125p-120] 

; mpf : + 4432515028236738 -120
; mpfd: + 4432515028236738 -120 (1.49276e-036) class: Pos. norm. non-zero
; hwf : + 4432515028236738 -120 (1.49276e-036) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100010000 #b1111011111110011010101000101100001011011000110100101)))
(assert (= r (fp #b0 #b01110000111 #b1111101111110101100101010011101110000011100111000010)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
