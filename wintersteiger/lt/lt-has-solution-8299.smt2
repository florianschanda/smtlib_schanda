(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.514230768560058226768205713597126305103302001953125p-360 {+ 2315889497669522 -360 (6.44753e-109)}
; Y = 1.76259119938955688411397204617969691753387451171875p585 {+ 3434405441406828 585 (2.23203e+176)}
; 1.514230768560058226768205713597126305103302001953125p-360 < 1.76259119938955688411397204617969691753387451171875p585 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010010111 #b1000001110100100101000001010110110001111111110010010)))
(assert (= y (fp #b0 #b11001001000 #b1100001100111001001011010100010110011000011101101100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
