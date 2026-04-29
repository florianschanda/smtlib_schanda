(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5242925405860889842557526208111084997653961181640625p92 {+ 2361203690416641 92 (7.54793e+027)}
; Y = 1.6202917649388532961296505163772962987422943115234375p-223 {+ 2793545761439607 -223 (1.202e-067)}
; 1.5242925405860889842557526208111084997653961181640625p92 < 1.6202917649388532961296505163772962987422943115234375p-223 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001011011 #b1000011000111000000010010011001101011010101000000001)))
(assert (= y (fp #b0 #b01100100000 #b1001111011001011011100001110110001100011111101110111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
