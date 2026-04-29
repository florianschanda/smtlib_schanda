(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0340801178338547838819749813410453498363494873046875 184 {+ 153483205977291 184 (2.53556e+055)}
; 1.0340801178338547838819749813410453498363494873046875 184 I == 1.0340801178338547838819749813410453498363494873046875 184
; [HW: 1.0340801178338547838819749813410453498363494873046875 184] 

; mpf : + 153483205977291 184
; mpfd: + 153483205977291 184 (2.53556e+055) class: Pos. norm. non-zero
; hwf : + 153483205977291 184 (2.53556e+055) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010110111 #b0000100010111001011110010111111110001010010011001011)))
(assert (= r (fp #b0 #b10010110111 #b0000100010111001011110010111111110001010010011001011)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
