(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.015921557524044782638839024002663791179656982421875p776 {- 71704320532446 776 (-4.03773e+233)}
; Y = -1.371069279625440007208680981420911848545074462890625p70 {- 1671147469449770 70 (-1.61867e+021)}
; -1.015921557524044782638839024002663791179656982421875p776 / -1.371069279625440007208680981420911848545074462890625p70 == 1.481940515510029587886720037204213440418243408203125p705
; [HW: 1.481940515510029587886720037204213440418243408203125p705] 

; mpf : + 2170467126065714 705
; mpfd: + 2170467126065714 705 (2.49447e+212) class: Pos. norm. non-zero
; hwf : + 2170467126065714 705 (2.49447e+212) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100000111 #b0000010000010011011011110110100011011101111111011110)))
(assert (= y (fp #b1 #b10001000101 #b0101111011111110011001010111010010001010101000101010)))
(assert (= r (fp #b0 #b11011000000 #b0111101101100000011101000010000010111011101000110010)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)
