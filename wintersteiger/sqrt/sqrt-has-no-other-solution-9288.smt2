(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.82649174962941085453849154873751103878021240234375p-378 {+ 3722187935655804 -378 (2.96674e-114)}
; 1.82649174962941085453849154873751103878021240234375p-378 S == 1.3514776171396294390802950147190131247043609619140625p-189
; [HW: 1.3514776171396294390802950147190131247043609619140625p-189] 

; mpf : + 1582914465579105 -189
; mpfd: + 1582914465579105 -189 (1.72242e-057) class: Pos. norm. non-zero
; hwf : + 1582914465579105 -189 (1.72242e-057) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010000101 #b1101001110010100111101101001101100010010011101111100)))
(assert (= r (fp #b0 #b01101000010 #b0101100111111010011011111110011011100100000001100001)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
