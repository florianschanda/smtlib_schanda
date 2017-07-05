(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.76580115206408283512473644805140793323516845703125 287 {+ 3448861783075700 287 (4.39087e+086)}
; 1.76580115206408283512473644805140793323516845703125 287 I == 1.76580115206408283512473644805140793323516845703125 287
; [HW: 1.76580115206408283512473644805140793323516845703125 287] 

; mpf : + 3448861783075700 287
; mpfd: + 3448861783075700 287 (4.39087e+086) class: Pos. norm. non-zero
; hwf : + 3448861783075700 287 (4.39087e+086) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100011110 #b1100010000001011100010110101011101011010101101110100)))
(assert (= r (fp #b0 #b10100011110 #b1100010000001011100010110101011101011010101101110100)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
