(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.94644243773473579750543649424798786640167236328125p-860 {- 4262397809909780 -860 (-2.53189e-259)}
; Y = -1.5287375193467009903969255901756696403026580810546875p-959 {- 2381222095106603 -959 (-3.13738e-289)}
; -1.94644243773473579750543649424798786640167236328125p-860 * -1.5287375193467009903969255901756696403026580810546875p-959 == +zero
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
(assert (= x (fp #b1 #b00010100011 #b1111001001001010000011010011010110011110000000010100)))
(assert (= y (fp #b1 #b00001000000 #b1000011101011011010101111001000111000011001000101011)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
