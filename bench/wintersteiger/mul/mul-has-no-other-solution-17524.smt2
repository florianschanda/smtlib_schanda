(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.769278938204127182842739784973673522472381591796875p-354 {+ 3464524339440078 -354 (4.82145e-107)}
; Y = 1.90886739988849907234680358669720590114593505859375p-799 {+ 4093174883467036 -799 (5.72544e-241)}
; 1.769278938204127182842739784973673522472381591796875p-354 * 1.90886739988849907234680358669720590114593505859375p-799 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010011101 #b1100010011101111011101101110100100010110100111001110)))
(assert (= y (fp #b0 #b00011100000 #b1110100010101011100010001010111011101011111100011100)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
