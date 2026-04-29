(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4298042348814223867492501085507683455944061279296875p-872 {+ 1935666192054235 -872 (4.54067e-263)}
; 1.4298042348814223867492501085507683455944061279296875p-872 S == 1.19574421800041452712548561976291239261627197265625p-436
; [HW: 1.19574421800041452712548561976291239261627197265625p-436] 

; mpf : + 881553587246596 -436
; mpfd: + 881553587246596 -436 (6.73845e-132) class: Pos. norm. non-zero
; hwf : + 881553587246596 -436 (6.73845e-132) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010010111 #b0110111000000111101001100111110001111111011111011011)))
(assert (= r (fp #b0 #b01001001011 #b0011001000011100010010110000011010110001011000000100)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
