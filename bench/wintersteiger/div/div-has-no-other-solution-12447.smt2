(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6836823273148009416644299562904052436351776123046875p-814 {- 3079031474534731 -814 (-1.54115e-245)}
; Y = -1.8414085119737177986820597652695141732692718505859375p573 {- 3789367060991199 573 (-5.69295e+172)}
; -1.6836823273148009416644299562904052436351776123046875p-814 / -1.8414085119737177986820597652695141732692718505859375p573 == +zero
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
(assert (= x (fp #b1 #b00011010001 #b1010111100000101110011100001010010101011100101001011)))
(assert (= y (fp #b1 #b11000111100 #b1101011101100110100011000101100110000000110011011111)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundTowardNegative x y) r)))
(check-sat)
(exit)
