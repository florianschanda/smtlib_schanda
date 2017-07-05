(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3691281116428923869676737012923695147037506103515625p139 {- 1662405226046905 139 (-9.54143e+041)}
; Y = 1.368654021952923738325580416130833327770233154296875p554 {+ 1660270115895822 554 (8.0707e+166)}
; -1.3691281116428923869676737012923695147037506103515625p139 + 1.368654021952923738325580416130833327770233154296875p554 == 1.368654021952923738325580416130833327770233154296875p554
; [HW: 1.368654021952923738325580416130833327770233154296875p554] 

; mpf : + 1660270115895822 554
; mpfd: + 1660270115895822 554 (8.0707e+166) class: Pos. norm. non-zero
; hwf : + 1660270115895822 554 (8.0707e+166) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010001010 #b0101111001111111001011100000111110001010010110111001)))
(assert (= y (fp #b0 #b11000101001 #b0101111001100000000111000010011111010011101000001110)))
(assert (= r (fp #b0 #b11000101001 #b0101111001100000000111000010011111010011101000001110)))
(assert (= (fp.add roundNearestTiesToEven x y) r))
(check-sat)
(exit)
