(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5780658441888510967743286528275348246097564697265625p343 {+ 2603377120484521 343 (2.82757e+103)}
; Y = 1.5666767111164592307659404468722641468048095703125p943 {+ 2552085025023624 943 (1.16484e+284)}
; 1.5780658441888510967743286528275348246097564697265625p343 > 1.5666767111164592307659404468722641468048095703125p943 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101010110 #b1001001111111100000111111000011110111001110010101001)))
(assert (= y (fp #b0 #b11110101110 #b1001000100010001101110011001010110100110011010001000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
