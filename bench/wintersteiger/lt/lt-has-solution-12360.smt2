(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.486820326377253476124451481155119836330413818359375p685 {+ 2192443840468982 685 (2.38674e+206)}
; Y = 1.881696109709082964656090553035028278827667236328125p434 {+ 3970806271139842 434 (8.34771e+130)}
; 1.486820326377253476124451481155119836330413818359375p685 < 1.881696109709082964656090553035028278827667236328125p434 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010101100 #b0111110010100000010000011100010011010001011111110110)))
(assert (= y (fp #b0 #b10110110001 #b1110000110110110110101100001010000110110000000000010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
