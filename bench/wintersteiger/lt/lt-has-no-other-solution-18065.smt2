(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2078693007724401464741958989179693162441253662109375p-803 {+ 936160105500527 -803 (2.2643e-242)}
; Y = 1.749081862331368864005298746633343398571014404296875p-28 {+ 3373564796065550 -28 (6.51584e-009)}
; 1.2078693007724401464741958989179693162441253662109375p-803 < 1.749081862331368864005298746633343398571014404296875p-28 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011011100 #b0011010100110110111011000010100010101000111101101111)))
(assert (= y (fp #b0 #b01111100011 #b1011111111000011110101000011010010111101011100001110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
