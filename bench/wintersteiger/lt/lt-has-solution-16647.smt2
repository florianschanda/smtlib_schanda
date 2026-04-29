(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8967608375046569602062618287163786590099334716796875p-228 {+ 4038651773626427 -228 (4.39717e-069)}
; Y = -1.723166011787041096425809882930479943752288818359375p275 {- 3256850181211126 275 (-1.04611e+083)}
; 1.8967608375046569602062618287163786590099334716796875p-228 < -1.723166011787041096425809882930479943752288818359375p275 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100011011 #b1110010110010010000111100100010101101010100000111011)))
(assert (= y (fp #b1 #b10100010010 #b1011100100100001011010000110001000110100001111110110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
