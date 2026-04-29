(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -0.4411829882891356024998685825266875326633453369140625p-1022 {- 1986911541661153 -1023 (-9.81665e-309)}
; Y = 1.9336084267141055992311748923384584486484527587890625p-134 {+ 4204598562659601 -134 (8.87869e-041)}
; -0.4411829882891356024998685825266875326633453369140625p-1022 = 1.9336084267141055992311748923384584486484527587890625p-134 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0111000011110001010111100100101001000000110111100001)))
(assert (= y (fp #b0 #b01101111001 #b1110111100000000111101100011110000000001110100010001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
