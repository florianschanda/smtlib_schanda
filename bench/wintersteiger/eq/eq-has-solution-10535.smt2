(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8623555333584735915763985758530907332897186279296875p-18 {+ 3883704058694107 -18 (7.10432e-006)}
; Y = 1.9857638522450897777815725930850021541118621826171875p744 {+ 4439485717646291 744 (1.83757e+224)}
; 1.8623555333584735915763985758530907332897186279296875p-18 = 1.9857638522450897777815725930850021541118621826171875p744 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111101101 #b1101110011000011010101010000110101001100100111011011)))
(assert (= y (fp #b0 #b11011100111 #b1111110001011011000001010001001011111000101111010011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
