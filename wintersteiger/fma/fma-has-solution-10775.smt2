(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1266926604721565485789369631675072014331817626953125p821 {- 570573018492981 821 (-1.57555e+247)}
; Y = -1.37462872500927080210431086015887558460235595703125p-589 {- 1687177786354036 -589 (-6.7845e-178)}
; Z = -1.41949324502347895560205870424397289752960205078125p-494 {- 1889229621972180 -494 (-2.77534e-149)}
; -1.1266926604721565485789369631675072014331817626953125p821 x -1.37462872500927080210431086015887558460235595703125p-589 -1.41949324502347895560205870424397289752960205078125p-494 == 1.548784095342143896090192356496118009090423583984375p232
; [HW: 1.548784095342143896090192356496118009090423583984375p232] 

; mpf : + 2471503847289734 232
; mpfd: + 2471503847289734 232 (1.06893e+070) class: Pos. norm. non-zero
; hwf : + 2471503847289734 232 (1.06893e+070) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100110100 #b0010000001101110111011100010000101011111000000110101)))
(assert (= y (fp #b1 #b00110110010 #b0101111111100111101010110000101000001110100101110100)))
(assert (= z (fp #b1 #b01000010001 #b0110101101100011111010001100100001000100110011010100)))
(assert (= r (fp #b0 #b10011100111 #b1000110001111101000111010100111000001111001110000110)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)
