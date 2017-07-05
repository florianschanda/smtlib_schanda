(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.370945514306316947994446309166960418224334716796875p858 {+ 1670590080004686 858 (2.63485e+258)}
; Y = 1.038248738912557644908929432858712971210479736328125p-57 {+ 172257006313986 -57 (7.2043e-018)}
; 1.370945514306316947994446309166960418224334716796875p858 M 1.038248738912557644908929432858712971210479736328125p-57 == 1.370945514306316947994446309166960418224334716796875p858
; [HW: 1.370945514306316947994446309166960418224334716796875p858] 

; mpf : + 1670590080004686 858
; mpfd: + 1670590080004686 858 (2.63485e+258) class: Pos. norm. non-zero
; hwf : + 1670590080004686 858 (2.63485e+258) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101011001 #b0101111011110110010010010000010010001011001001001110)))
(assert (= y (fp #b0 #b01111000110 #b0000100111001010101010110101101010111110001000000010)))
(assert (= r (fp #b0 #b11101011001 #b0101111011110110010010010000010010001011001001001110)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
