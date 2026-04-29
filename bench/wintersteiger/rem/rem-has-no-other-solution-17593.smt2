(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = 1.2685510995643556331202717046835459768772125244140625p-22 {+ 1209446631927969 -22 (3.02446e-007)}
; +zero % 1.2685510995643556331202717046835459768772125244140625p-22 == +zero
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
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b01111101001 #b0100010010111111110000111100110111101111000010100001)))
(assert (= r (_ +zero 11 53)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
