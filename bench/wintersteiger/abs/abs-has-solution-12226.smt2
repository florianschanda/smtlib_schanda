(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5775784703379851503513009447488002479076385498046875p374 {+ 2601182183791371 374 (6.07029e+112)}
; 1.5775784703379851503513009447488002479076385498046875p374 | == 1.5775784703379851503513009447488002479076385498046875p374
; [HW: 1.5775784703379851503513009447488002479076385498046875p374] 

; mpf : + 2601182183791371 374
; mpfd: + 2601182183791371 374 (6.07029e+112) class: Pos. norm. non-zero
; hwf : + 2601182183791371 374 (6.07029e+112) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101110101 #b1001001111011100001011101100000011111001101100001011)))
(assert (= r (fp #b0 #b10101110101 #b1001001111011100001011101100000011111001101100001011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
