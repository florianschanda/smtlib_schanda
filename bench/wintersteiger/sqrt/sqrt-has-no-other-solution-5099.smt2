(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.667548844790213369293496725731529295444488525390625p132 {+ 3006372728648810 132 (9.079e+039)}
; 1.667548844790213369293496725731529295444488525390625p132 S == 1.29133606965429947877055383287370204925537109375p66
; [HW: 1.29133606965429947877055383287370204925537109375p66] 

; mpf : + 1312061014734688 66
; mpfd: + 1312061014734688 66 (9.52838e+019) class: Pos. norm. non-zero
; hwf : + 1312061014734688 66 (9.52838e+019) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010000011 #b1010101011100100011110110010100011011011010001101010)))
(assert (= r (fp #b0 #b10001000001 #b0100101010010101000000000010101101001111011101100000)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
