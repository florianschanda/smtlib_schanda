(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.326713265177318579191023673047311604022979736328125p37 {+ 1471385739309570 37 (1.82342e+011)}
; Y = -1.7261836210635255195455783905345015227794647216796875p-633 {- 3270440285224251 -633 (-4.84284e-191)}
; 1.326713265177318579191023673047311604022979736328125p37 % -1.7261836210635255195455783905345015227794647216796875p-633 == 1.323021789574060136374100693501532077789306640625p-637
; [HW: 1.323021789574060136374100693501532077789306640625p-637] 

; mpf : + 1454760811158288 -637
; mpfd: + 1454760811158288 -637 (2.31985e-192) class: Pos. norm. non-zero
; hwf : + 1454760811158288 -637 (2.31985e-192) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000100100 #b0101001110100011011110110000010100011011001000000010)))
(assert (= y (fp #b1 #b00110000110 #b1011100111100111001010110111011101011011110100111011)))
(assert (= r (fp #b0 #b00110000010 #x52b18e561db10)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
