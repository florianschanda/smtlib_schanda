(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.284050832853612877926252622273750603199005126953125p-984 {- 1279251224993810 -984 (-7.85356e-297)}
; Y = -1.3926522799771776650601395886042155325412750244140625p-520 {- 1768348661791393 -520 (-4.05737e-157)}
; Z = -1.4682663691125610316845495617599226534366607666015625p399 {- 2108884245445465 399 (-1.89572e+120)}
; -1.284050832853612877926252622273750603199005126953125p-984 x -1.3926522799771776650601395886042155325412750244140625p-520 -1.4682663691125610316845495617599226534366607666015625p399 == -1.4682663691125608096399446367286145687103271484375p399
; [HW: -1.4682663691125608096399446367286145687103271484375p399] 

; mpf : - 2108884245445464 399
; mpfd: - 2108884245445464 399 (-1.89572e+120) class: Neg. norm. non-zero
; hwf : - 2108884245445464 399 (-1.89572e+120) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000100111 #b0100100010110111100011100010110110000010000000010010)))
(assert (= y (fp #b1 #b00111110111 #b0110010010000100110111000001110100110011101010100001)))
(assert (= z (fp #b1 #b10110001110 #b0111011111100000010011100000010100100111101101011001)))
(assert (= r (fp #b1 #b10110001110 #b0111011111100000010011100000010100100111101101011000)))
(assert (= (fp.fma roundTowardZero x y z) r))
(check-sat)
(exit)
