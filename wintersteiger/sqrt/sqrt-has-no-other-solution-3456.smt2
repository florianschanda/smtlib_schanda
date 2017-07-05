(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4987329719355459989316159408190287649631500244140625p269 {+ 2246093626566305 269 (1.42165e+081)}
; 1.4987329719355459989316159408190287649631500244140625p269 S == 1.7313191340336684387324339695624075829982757568359375p134
; [HW: 1.7313191340336684387324339695624075829982757568359375p134] 

; mpf : + 3293568579522943 134
; mpfd: + 3293568579522943 134 (3.77048e+040) class: Pos. norm. non-zero
; hwf : + 3293568579522943 134 (3.77048e+040) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100001100 #b0111111110101100111101101100101111100110011010100001)))
(assert (= r (fp #b0 #b10010000101 #b1011101100110111101110110001001110011101000101111111)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
