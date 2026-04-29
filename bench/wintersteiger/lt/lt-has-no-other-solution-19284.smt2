(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6847251922963966119795031772810034453868865966796875p-221 {- 3083728120877243 -221 (-4.99919e-067)}
; Y = -1.831067761295469775717492666444741189479827880859375p-169 {- 3742796460089910 -169 (-2.44701e-051)}
; -1.6847251922963966119795031772810034453868865966796875p-221 < -1.831067761295469775717492666444741189479827880859375p-169 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100100010 #b1010111101001010001001100111001110101001000010111011)))
(assert (= y (fp #b1 #b01101010110 #b1101010011000000110110110101011110000110001000110110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
