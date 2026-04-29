(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.74742308550972236247389446361921727657318115234375 1020 {+ 3366094329389692 1020 (1.96333e+307)}
; 1.74742308550972236247389446361921727657318115234375 1020 I == 1.74742308550972236247389446361921727657318115234375 1020
; [HW: 1.74742308550972236247389446361921727657318115234375 1020] 

; mpf : + 3366094329389692 1020
; mpfd: + 3366094329389692 1020 (1.96333e+307) class: Pos. norm. non-zero
; hwf : + 3366094329389692 1020 (1.96333e+307) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111111011 #b1011111101010111000111101000110010001010001001111100)))
(assert (= r (fp #b0 #b11111111011 #b1011111101010111000111101000110010001010001001111100)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
