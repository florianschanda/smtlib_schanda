(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.454544901136555434817410059622488915920257568359375p-535 {+ 2047088247381750 -535 (1.29324e-161)}
; 1.454544901136555434817410059622488915920257568359375p-535 S == 1.705605406380124922094410067074932157993316650390625p-268
; [HW: 1.705605406380124922094410067074932157993316650390625p-268] 

; mpf : + 3177764245244138 -268
; mpfd: + 3177764245244138 -268 (3.59617e-081) class: Pos. norm. non-zero
; hwf : + 3177764245244138 -268 (3.59617e-081) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111101000 #b0111010001011101000011011111110011110001111011110110)))
(assert (= r (fp #b0 #b01011110011 #b1011010010100010100011100101000001001000100011101010)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
