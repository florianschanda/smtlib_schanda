(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9823310309450918875739944269298575818538665771484375p303 {+ 4424025664918791 303 (3.23046e+091)}
; Y = 1.2554277470670343053171791325439698994159698486328125p807 {+ 1150344306511181 807 (1.07151e+243)}
; 1.9823310309450918875739944269298575818538665771484375p303 = 1.2554277470670343053171791325439698994159698486328125p807 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100101110 #b1111101101111010000010111110001111000001010100000111)))
(assert (= y (fp #b0 #b11100100110 #b0100000101100011101101100111110000100100110101001101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
