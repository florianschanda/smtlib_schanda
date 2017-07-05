(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1098576454157813575562840924249030649662017822265625p43 {+ 494754850958313 43 (9.76241e+012)}
; 1.1098576454157813575562840924249030649662017822265625p43 S == 1.4898708973704943847593540340312756597995758056640625p21
; [HW: 1.4898708973704943847593540340312756597995758056640625p21] 

; mpf : + 2206182390857409 21
; mpfd: + 2206182390857409 21 (3.12449e+006) class: Pos. norm. non-zero
; hwf : + 2206182390857409 21 (3.12449e+006) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000101010 #b0001110000011111101000010111001001000110101111101001)))
(assert (= r (fp #b0 #b10000010100 #b0111110101101000001011011101101101110111111011000001)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
