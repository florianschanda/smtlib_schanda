(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8282014176921210779624971110024489462375640869140625p-364 {+ 3729887596105953 -364 (4.86526e-110)}
; 1.8282014176921210779624971110024489462375640869140625p-364 S == 1.3521099872762276650206558770150877535343170166015625p-182
; [HW: 1.3521099872762276650206558770150877535343170166015625p-182] 

; mpf : + 1585762407490649 -182
; mpfd: + 1585762407490649 -182 (2.20573e-055) class: Pos. norm. non-zero
; hwf : + 1585762407490649 -182 (2.20573e-055) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010010011 #b1101010000000101000000100001001101111101000011100001)))
(assert (= r (fp #b0 #b01101001001 #b0101101000100011111000010100111111110010010001011001)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
