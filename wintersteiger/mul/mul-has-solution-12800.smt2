(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5818439405241122575063172916998155415058135986328125p-138 {+ 2620392153732173 -138 (4.53967e-042)}
; Y = 1.426305254799395516585036602918989956378936767578125p-644 {+ 1919908186660642 -644 (1.95387e-194)}
; 1.5818439405241122575063172916998155415058135986328125p-138 * 1.426305254799395516585036602918989956378936767578125p-644 == 1.1280961623210619126922438226756639778614044189453125p-781
; [HW: 1.1280961623210619126922438226756639778614044189453125p-781] 

; mpf : + 576893828896725 -781
; mpfd: + 576893828896725 -781 (8.86992e-236) class: Pos. norm. non-zero
; hwf : + 576893828896725 -781 (8.86992e-236) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101110101 #b1001010011110011101110010111011111101101010001001101)))
(assert (= y (fp #b0 #b00101111011 #b0110110100100010010101110101011101111001111100100010)))
(assert (= r (fp #b0 #b00011110010 #b0010000011001010111010001111101111101001011111010101)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
