(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.940049122425354877208292236900888383388519287109375p393 {- 4233604877464790 393 (-3.91382e+118)}
; Y = 1.3771445976037302028061048986273817718029022216796875p-451 {+ 1698508269232955 -451 (2.36838e-136)}
; -1.940049122425354877208292236900888383388519287109375p393 M 1.3771445976037302028061048986273817718029022216796875p-451 == 1.3771445976037302028061048986273817718029022216796875p-451
; [HW: 1.3771445976037302028061048986273817718029022216796875p-451] 

; mpf : + 1698508269232955 -451
; mpfd: + 1698508269232955 -451 (2.36838e-136) class: Pos. norm. non-zero
; hwf : + 1698508269232955 -451 (2.36838e-136) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110001000 #b1111000010100111000011110010110101110011010011010110)))
(assert (= y (fp #b0 #b01000111100 #b0110000010001100100011000110000010010010001100111011)))
(assert (= r (fp #b0 #b01000111100 #b0110000010001100100011000110000010010010001100111011)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
