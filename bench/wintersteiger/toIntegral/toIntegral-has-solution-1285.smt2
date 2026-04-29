(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.471466151150268242275842567323707044124603271484375 681 {+ 2123294782638150 681 (1.47631e+205)}
; 1.471466151150268242275842567323707044124603271484375 681 I == 1.471466151150268242275842567323707044124603271484375 681
; [HW: 1.471466151150268242275842567323707044124603271484375 681] 

; mpf : + 2123294782638150 681
; mpfd: + 2123294782638150 681 (1.47631e+205) class: Pos. norm. non-zero
; hwf : + 2123294782638150 681 (1.47631e+205) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010101000 #b0111100010110010000000010111010001011100100001000110)))
(assert (= r (fp #b0 #b11010101000 #b0111100010110010000000010111010001011100100001000110)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
