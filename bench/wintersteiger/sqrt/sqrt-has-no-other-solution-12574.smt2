(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3881132185355962160855369802447967231273651123046875p713 {+ 1747906546374475 713 (5.98152e+214)}
; 1.3881132185355962160855369802447967231273651123046875p713 S == 1.6662011994567738071282292366959154605865478515625p356
; [HW: 1.6662011994567738071282292366959154605865478515625p356] 

; mpf : + 3000303473627304 356
; mpfd: + 3000303473627304 356 (2.44572e+107) class: Pos. norm. non-zero
; hwf : + 3000303473627304 356 (2.44572e+107) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011001000 #b0110001101011011011000110100110011000001011101001011)))
(assert (= r (fp #b0 #b10101100011 #b1010101010001100001010010110110000111001000010101000)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
