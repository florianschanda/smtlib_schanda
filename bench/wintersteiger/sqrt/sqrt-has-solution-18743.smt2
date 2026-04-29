(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.931911808405021968582104818779043853282928466796875p83 {+ 4196957673075022 83 (1.86843e+025)}
; 1.931911808405021968582104818779043853282928466796875p83 S == 1.96566111443708546602238129707984626293182373046875p41
; [HW: 1.96566111443708546602238129707984626293182373046875p41] 

; mpf : + 4348951035145036 41
; mpfd: + 4348951035145036 41 (4.32253e+012) class: Pos. norm. non-zero
; hwf : + 4348951035145036 41 (4.32253e+012) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001010010 #b1110111010010001110001011011001111011011000101001110)))
(assert (= r (fp #b0 #b10000101000 #b1111011100110101100100010001100110000110101101001100)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
