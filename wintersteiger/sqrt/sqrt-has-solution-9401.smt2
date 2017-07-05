(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.71494784117448073601508440333418548107147216796875p136 {+ 3219838831102732 136 (1.49393e+041)}
; 1.71494784117448073601508440333418548107147216796875p136 S == 1.309560170887340557754896508413366973400115966796875p68
; [HW: 1.309560170887340557754896508413366973400115966796875p68] 

; mpf : + 1394135070256974 68
; mpfd: + 1394135070256974 68 (3.86514e+020) class: Pos. norm. non-zero
; hwf : + 1394135070256974 68 (3.86514e+020) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010000111 #b1011011100000110110100100101110000110000101100001100)))
(assert (= r (fp #b0 #b10001000011 #b0100111100111111010101011101101000011010111101001110)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
