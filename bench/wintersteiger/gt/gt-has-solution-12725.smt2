(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.582779357188795810174042344442568719387054443359375p530 {- 2624604895874678 530 (-5.56312e+159)}
; Y = 1.142287624870316875558273750357329845428466796875p338 {+ 640806494345392 338 (6.39608e+101)}
; -1.582779357188795810174042344442568719387054443359375p530 > 1.142287624870316875558273750357329845428466796875p338 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000010001 #b1001010100110001000001110010011111101000111001110110)))
(assert (= y (fp #b0 #b10101010001 #b0010010001101100111101100011011101110001100010110000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
