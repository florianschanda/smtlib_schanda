(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4042611727775822227926028062938712537288665771484375p-42 {+ 1820630467081479 -42 (3.19292e-013)}
; Y = -1.7513569361605012542071335701621137559413909912109375p-910 {- 3383810817714671 -910 (-2.02339e-274)}
; 1.4042611727775822227926028062938712537288665771484375p-42 < -1.7513569361605012542071335701621137559413909912109375p-910 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111010101 #b0110011101111101101010010000010000011111010100000111)))
(assert (= y (fp #b1 #b00001110001 #b1100000001011000111011011001110001101110100111101111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
