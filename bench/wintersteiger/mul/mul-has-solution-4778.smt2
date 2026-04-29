(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.39386636660087592787249377579428255558013916015625p-516 {+ 1773816421857476 -516 (6.49746e-156)}
; Y = 1.52320651994917621863123713410459458827972412109375p-646 {+ 2356312688280924 -646 (5.21653e-195)}
; 1.39386636660087592787249377579428255558013916015625p-516 * 1.52320651994917621863123713410459458827972412109375p-646 == +zero
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
(assert (= x (fp #b0 #b00111111011 #b0110010011010100011011010001101110001011100011000100)))
(assert (= y (fp #b0 #b00101111001 #b1000010111110000110111001100110000111100010101011100)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
