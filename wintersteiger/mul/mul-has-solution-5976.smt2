(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.193931704684118688675198427517898380756378173828125p-896 {- 873390752950722 -896 (-2.25997e-270)}
; Y = -1.558850473424143956435727886855602264404296875p-199 {- 2516838783868800 -199 (-1.94015e-060)}
; -1.193931704684118688675198427517898380756378173828125p-896 * -1.558850473424143956435727886855602264404296875p-199 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001111111 #b0011000110100101100000100001100101000110100111000010)))
(assert (= y (fp #b1 #b01100111000 #b1000111100010000110100110001101010110101111110000000)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
