(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3283754596470760400706012660521082580089569091796875p-449 {+ 1478871597704187 -449 (9.13803e-136)}
; Y = 1.4009179158481013249826219180249609053134918212890625p-617 {+ 1805573776419665 -617 (2.57576e-186)}
; 1.3283754596470760400706012660521082580089569091796875p-449 < 1.4009179158481013249826219180249609053134918212890625p-617 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000111110 #b0101010000010000011010100000001111111110001111111011)))
(assert (= y (fp #b0 #b00110010110 #b0110011010100010100011100111100011110010101101010001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
