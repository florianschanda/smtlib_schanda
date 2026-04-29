(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.794196789166839334228598090703599154949188232421875 199 {- 3576744363750622 199 (-1.44158e+060)}
; -1.794196789166839334228598090703599154949188232421875 199 I == -1.794196789166839334228598090703599154949188232421875 199
; [HW: -1.794196789166839334228598090703599154949188232421875 199] 

; mpf : - 3576744363750622 199
; mpfd: - 3576744363750622 199 (-1.44158e+060) class: Neg. norm. non-zero
; hwf : - 3576744363750622 199 (-1.44158e+060) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011000110 #b1100101101010000011110110001010000001111010011011110)))
(assert (= r (fp #b1 #b10011000110 #b1100101101010000011110110001010000001111010011011110)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
