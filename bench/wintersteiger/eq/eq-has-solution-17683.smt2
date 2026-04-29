(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9373704151922719329803612708928994834423065185546875p-409 {+ 4221541052568043 -409 (1.46536e-123)}
; Y = -1.5192998151769854242587598491809330880641937255859375p-821 {- 2338718454124639 -821 (-1.08647e-247)}
; 1.9373704151922719329803612708928994834423065185546875p-409 = -1.5192998151769854242587598491809330880641937255859375p-821 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001100110 #b1110111111110111100000011110110101111101000111101011)))
(assert (= y (fp #b1 #b00011001010 #b1000010011110000110101010010101100000001000001011111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
