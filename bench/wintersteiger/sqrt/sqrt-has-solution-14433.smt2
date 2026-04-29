(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7320379900272604434263712391839362680912017822265625p619 {+ 3296806019107817 619 (3.76812e+186)}
; 1.7320379900272604434263712391839362680912017822265625p619 S == 1.861202831519047862229854217730462551116943359375p309
; [HW: 1.861202831519047862229854217730462551116943359375p309] 

; mpf : + 3878512751119600 309
; mpfd: + 3878512751119600 309 (1.94116e+093) class: Pos. norm. non-zero
; hwf : + 3878512751119600 309 (1.94116e+093) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001101010 #b1011101101100110110101110111101010011000101111101001)))
(assert (= r (fp #b0 #b10100110100 #b1101110001110111110010011110110010011000110011110000)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
