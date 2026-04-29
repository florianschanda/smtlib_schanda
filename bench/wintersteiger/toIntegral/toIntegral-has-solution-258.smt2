(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8439452127295383743188494918285869061946868896484375 262 {+ 3800791345569863 262 (1.36649e+079)}
; 1.8439452127295383743188494918285869061946868896484375 262 I == 1.8439452127295383743188494918285869061946868896484375 262
; [HW: 1.8439452127295383743188494918285869061946868896484375 262] 

; mpf : + 3800791345569863 262
; mpfd: + 3800791345569863 262 (1.36649e+079) class: Pos. norm. non-zero
; hwf : + 3800791345569863 262 (1.36649e+079) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100000101 #b1101100000001100110010110010000001001010000001000111)))
(assert (= r (fp #b0 #b10100000101 #b1101100000001100110010110010000001001010000001000111)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
