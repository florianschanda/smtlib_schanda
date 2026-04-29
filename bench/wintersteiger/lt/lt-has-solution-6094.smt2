(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9994396968413143955700661535956896841526031494140625p526 {- 4501076246273825 526 (-4.39224e+158)}
; Y = 1.5844797211914904977447804412804543972015380859375p416 {+ 2632262654563608 416 (2.68142e+125)}
; -1.9994396968413143955700661535956896841526031494140625p526 < 1.5844797211914904977447804412804543972015380859375p416 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000001101 #b1111111111011011010001111010110001000001111100100001)))
(assert (= y (fp #b0 #b10110011111 #b1001010110100000011101101000011110110001010100011000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
