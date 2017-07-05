(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.826245059088268618552319821901619434356689453125p342 {+ 3721076940226640 342 (1.63613e+103)}
; 1.826245059088268618552319821901619434356689453125p342 S == 1.351386347085195449579941850970499217510223388671875p171
; [HW: 1.351386347085195449579941850970499217510223388671875p171] 

; mpf : + 1582503421795966 171
; mpfd: + 1582503421795966 171 (4.04491e+051) class: Pos. norm. non-zero
; hwf : + 1582503421795966 171 (4.04491e+051) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101010101 #b1101001110000100110010111101001101000100000001010000)))
(assert (= r (fp #b0 #b10010101010 #b0101100111110100011101001010010011111101111001111110)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
