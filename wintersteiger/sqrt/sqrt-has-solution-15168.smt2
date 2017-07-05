(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.195129463142192260960428029648028314113616943359375p-689 {+ 878784977496182 -689 (4.65316e-208)}
; 1.195129463142192260960428029648028314113616943359375p-689 S == 1.5460462238511449850619783319416455924510955810546875p-345
; [HW: 1.5460462238511449850619783319416455924510955810546875p-345] 

; mpf : + 2459173570263083 -345
; mpfd: + 2459173570263083 -345 (2.15712e-104) class: Pos. norm. non-zero
; hwf : + 2459173570263083 -345 (2.15712e-104) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101001110 #b0011000111110100000000010010011010101110100001110110)))
(assert (= r (fp #b0 #b01010100110 #b1000101111001001101011110111000110001011100000101011)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
