(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9958915841377944389023468829691410064697265625p36 {+ 4485096967224384 36 (1.37157e+011)}
; 1.9958915841377944389023468829691410064697265625p36 S == 1.412760271290849356518037893692962825298309326171875p18
; [HW: 1.412760271290849356518037893692962825298309326171875p18] 

; mpf : + 1858907003978814 18
; mpfd: + 1858907003978814 18 (370347) class: Pos. norm. non-zero
; hwf : + 1858907003978814 18 (370347) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000100011 #b1111111011110010110000000011100000111011110001000000)))
(assert (= r (fp #b0 #b10000010001 #b0110100110101010101010000011101001001000010000111110)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
