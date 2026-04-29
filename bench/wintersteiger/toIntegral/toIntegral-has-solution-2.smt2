(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3677607828814701829145406009047292172908782958984375 660 {+ 1656247324746471 660 (6.54346e+198)}
; 1.3677607828814701829145406009047292172908782958984375 660 I == 1.3677607828814701829145406009047292172908782958984375 660
; [HW: 1.3677607828814701829145406009047292172908782958984375 660] 

; mpf : + 1656247324746471 660
; mpfd: + 1656247324746471 660 (6.54346e+198) class: Pos. norm. non-zero
; hwf : + 1656247324746471 660 (6.54346e+198) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010010011 #b0101111000100101100100100001011100111010001011100111)))
(assert (= r (fp #b0 #b11010010011 #b0101111000100101100100100001011100111010001011100111)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
