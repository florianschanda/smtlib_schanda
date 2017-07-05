(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3098742343367024698608247490483336150646209716796875p114 {- 1395549486290491 114 (-2.7205e+034)}
; Y = -1.5280105869667506279796498347423039376735687255859375p719 {- 2377948282711135 719 (-4.21399e+216)}
; -1.3098742343367024698608247490483336150646209716796875p114 < -1.5280105869667506279796498347423039376735687255859375p719 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001110001 #b0100111101010011111010101111011001011001011000111011)))
(assert (= y (fp #b1 #b11011001110 #b1000011100101011101100111010101011110110110001011111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
