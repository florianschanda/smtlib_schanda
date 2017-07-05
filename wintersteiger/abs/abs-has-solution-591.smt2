(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.01697896428301870486166080809198319911956787109375p-273 {- 76466457218140 -273 (-6.70075e-083)}
; -1.01697896428301870486166080809198319911956787109375p-273 | == 1.01697896428301870486166080809198319911956787109375p-273
; [HW: 1.01697896428301870486166080809198319911956787109375p-273] 

; mpf : + 76466457218140 -273
; mpfd: + 76466457218140 -273 (6.70075e-083) class: Pos. norm. non-zero
; hwf : + 76466457218140 -273 (6.70075e-083) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011101110 #b0000010001011000101110111100000001010000110001011100)))
(assert (= r (fp #b0 #b01011101110 #b0000010001011000101110111100000001010000110001011100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
