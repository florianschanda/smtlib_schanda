(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0186894478749863868216607443173415958881378173828125p-777 {+ 84169790485549 -777 (1.28155e-234)}
; 1.0186894478749863868216607443173415958881378173828125p-777 S == 1.4273678207630899894553522244677878916263580322265625p-389
; [HW: 1.4273678207630899894553522244677878916263580322265625p-389] 

; mpf : + 1924693558338793 -389
; mpfd: + 1924693558338793 -389 (1.13206e-117) class: Pos. norm. non-zero
; hwf : + 1924693558338793 -389 (1.13206e-117) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011110110 #b0000010011001000110101001110011101100111010000101101)))
(assert (= r (fp #b0 #b01001111010 #b0110110101100111111110100011110110001010010011101001)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
