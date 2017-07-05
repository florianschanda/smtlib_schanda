(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8054868458959634214266998242237605154514312744140625p-398 {+ 3627590259028897 -398 (2.79677e-120)}
; 1.8054868458959634214266998242237605154514312744140625p-398 S == 1.3436840573200097281869602738879621028900146484375p-199
; [HW: 1.3436840573200097281869602738879621028900146484375p-199] 

; mpf : + 1547815392479576 -199
; mpfd: + 1547815392479576 -199 (1.67235e-060) class: Pos. norm. non-zero
; hwf : + 1547815392479576 -199 (1.67235e-060) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001110001 #b1100111000110100011000101100110001111011001110100001)))
(assert (= r (fp #b0 #b01100111000 #b0101011111111011101011011010101001011000100101011000)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
