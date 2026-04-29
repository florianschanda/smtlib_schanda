(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4355744820630678137973745833733119070529937744140625p-788 {+ 1961653075111329 -788 (8.81839e-238)}
; 1.4355744820630678137973745833733119070529937744140625p-788 S == 1.198154615257591704136075350106693804264068603515625p-394
; [HW: 1.198154615257591704136075350106693804264068603515625p-394] 

; mpf : + 892409051435834 -394
; mpfd: + 892409051435834 -394 (2.96958e-119) class: Pos. norm. non-zero
; hwf : + 892409051435834 -394 (2.96958e-119) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011101011 #b0110111110000001110011110010101101101110110110100001)))
(assert (= r (fp #b0 #b01001110101 #b0011001010111010010000101100100000010101001100111010)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
