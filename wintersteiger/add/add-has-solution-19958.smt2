(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.664073163375775266104028560221195220947265625p349 {+ 2990719651125888 349 (1.90827e+105)}
; Y = -1.87775380637512601111893673078157007694244384765625p279 {- 3953051715314052 279 (-1.82393e+084)}
; 1.664073163375775266104028560221195220947265625p349 + -1.87775380637512601111893673078157007694244384765625p279 == 1.6640731633757750440594236351898871362209320068359375p349
; [HW: 1.6640731633757750440594236351898871362209320068359375p349] 

; mpf : + 2990719651125887 349
; mpfd: + 2990719651125887 349 (1.90827e+105) class: Pos. norm. non-zero
; hwf : + 2990719651125887 349 (1.90827e+105) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101011100 #b1010101000000000101100101110011011011001101010000000)))
(assert (= y (fp #b1 #b10100010110 #b1110000010110100011110010011010001010010000110000100)))
(assert (= r (fp #b0 #b10101011100 #b1010101000000000101100101110011011011001101001111111)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)
