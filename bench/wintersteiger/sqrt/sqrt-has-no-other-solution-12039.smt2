(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3674676518440966876966058407560922205448150634765625p313 {+ 1654927179915785 313 (2.28195e+094)}
; 1.3674676518440966876966058407560922205448150634765625p313 S == 1.653763980647841247417773047345690429210662841796875p156
; [HW: 1.653763980647841247417773047345690429210662841796875p156] 

; mpf : + 2944291219633870 156
; mpfd: + 2944291219633870 156 (1.51061e+047) class: Pos. norm. non-zero
; hwf : + 2944291219633870 156 (1.51061e+047) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100111000 #b0101111000010010010111000010101100000010001000001001)))
(assert (= r (fp #b0 #b10010011011 #b1010011101011101000100111000010000101111011011001110)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
