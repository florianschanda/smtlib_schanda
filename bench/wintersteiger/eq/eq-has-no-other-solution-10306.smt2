(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.944443998444763455069050905876792967319488525390625p380 {- 4253397639468138 380 (-4.78844e+114)}
; Y = -1.01534360541722179505086387507617473602294921875p-515 {- 69101455639520 -515 (-9.46597e-156)}
; -1.944443998444763455069050905876792967319488525390625p380 = -1.01534360541722179505086387507617473602294921875p-515 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101111011 #b1111000111000111000101001111011000111001010001101010)))
(assert (= y (fp #b1 #b00111111100 #b0000001111101101100011101111101101111000001111100000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
