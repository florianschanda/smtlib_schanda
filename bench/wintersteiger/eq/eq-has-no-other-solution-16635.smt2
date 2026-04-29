(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1993302684014131020973081831471063196659088134765625p408 {- 897703722496265 408 (-7.92824e+122)}
; Y = 0.0552530118868241881813219151808880269527435302734375p-1022 {+ 248837443744599 -1023 (1.22942e-309)}
; -1.1993302684014131020973081831471063196659088134765625p408 = 0.0552530118868241881813219151808880269527435302734375p-1022 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110010111 #b0011001100000111010011101111011111100011000100001001)))
(assert (= y (fp #b0 #b00000000000 #b0000111000100101000011111011011100001111001101010111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
