(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1113797091074590905890318026649765670299530029296875p834 {+ 501609616432987 834 (1.27315e+251)}
; Y = -1.73476082875917914094543448300100862979888916015625p167 {- 3309068594606276 167 (-3.24526e+050)}
; Z = -1.6806303083676559229076019619242288172245025634765625p639 {- 3065286403141641 639 (-3.83389e+192)}
; 1.1113797091074590905890318026649765670299530029296875p834 x -1.73476082875917914094543448300100862979888916015625p167 -1.6806303083676559229076019619242288172245025634765625p639 == -1.927977985237391056472233685781247913837432861328125p1001
; [HW: -1.927977985237391056472233685781247913837432861328125p1001] 

; mpf : - 4179241308523138 1001
; mpfd: - 4179241308523138 1001 (-4.13169e+301) class: Neg. norm. non-zero
; hwf : - 4179241308523138 1001 (-4.13169e+301) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101000001 #b0001110010000011011000010111000000001101111101011011)))
(assert (= y (fp #b1 #b10010100110 #b1011110000011001010010010010000111100111000011000100)))
(assert (= z (fp #b1 #b11001111110 #b1010111000111101110010011011001100011011000000001001)))
(assert (= r (fp #b1 #b11111101000 #b1110110110001111111101110001101000000000101010000010)))
(assert (= (fp.fma roundTowardZero x y z) r))
(check-sat)
(exit)
