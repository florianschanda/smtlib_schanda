(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1344215237963790610109526824089698493480682373046875p483 {+ 605380724479947 483 (2.8331e+145)}
; Y = -oo {- 0 1024 (-1.#INF)}
; 1.1344215237963790610109526824089698493480682373046875p483 / -oo == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111100010 #b0010001001101001011100101111000010010101011111001011)))
(assert (= y (_ -oo 11 53)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)
