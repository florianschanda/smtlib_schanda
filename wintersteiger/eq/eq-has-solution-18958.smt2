(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.831893805825813625887121816049329936504364013671875p-477 {- 3746516633928958 -477 (-4.69453e-144)}
; Y = -1.893022105848244596160157016129232943058013916015625p74 {- 4021814023131770 74 (-3.57582e+022)}
; -1.831893805825813625887121816049329936504364013671875p-477 = -1.893022105848244596160157016129232943058013916015625p74 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000100010 #b1101010011110110111111100001000111000100010011111110)))
(assert (= y (fp #b1 #b10001001001 #b1110010010011101000110001100001100111001001001111010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
