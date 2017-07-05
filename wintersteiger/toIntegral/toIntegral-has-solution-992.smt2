(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.96705290351260853043413590057753026485443115234375 63 {+ 4355219095906940 63 (1.81429e+019)}
; 1.96705290351260853043413590057753026485443115234375 63 I == 1.96705290351260853043413590057753026485443115234375 63
; [HW: 1.96705290351260853043413590057753026485443115234375 63] 

; mpf : + 4355219095906940 63
; mpfd: + 4355219095906940 63 (1.81429e+019) class: Pos. norm. non-zero
; hwf : + 4355219095906940 63 (1.81429e+019) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000111110 #b1111011110010000110001110111001000010110101001111100)))
(assert (= r (fp #b0 #b10000111110 #b1111011110010000110001110111001000010110101001111100)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
