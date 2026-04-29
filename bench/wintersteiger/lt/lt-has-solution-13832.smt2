(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7797784288361990778781773769878782331943511962890625p515 {+ 3511809841538257 515 (1.90903e+155)}
; Y = 1.9443753940445100969469649498932994902133941650390625p-781 {+ 4253088672716721 -781 (1.52881e-235)}
; 1.7797784288361990778781773769878782331943511962890625p515 < 1.9443753940445100969469649498932994902133941650390625p-781 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000000010 #b1100011110011111100011110010000111111010010011010001)))
(assert (= y (fp #b0 #b00011110010 #b1111000111000010100101011111100010010001011110110001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
