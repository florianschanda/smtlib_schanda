(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.597179169895840633586203693994320929050445556640625p890 {- 2689455887016330 890 (-1.31841e+268)}
; Y = 1.08853478991026175748402238241396844387054443359375p-792 {+ 398725246849180 -792 (4.17913e-239)}
; -1.597179169895840633586203693994320929050445556640625p890 * 1.08853478991026175748402238241396844387054443359375p-792 == -1.7385850921516150524581689751357771456241607666015625p98
; [HW: -1.7385850921516150524581689751357771456241607666015625p98] 

; mpf : - 3326291545795417 98
; mpfd: - 3326291545795417 98 (-5.5098e+029) class: Neg. norm. non-zero
; hwf : - 3326291545795417 98 (-5.5098e+029) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101111001 #b1001100011100000101110111110110010001110000110001010)))
(assert (= y (fp #b0 #b00011100111 #b0001011010101010001101110100101100111001000010011100)))
(assert (= r (fp #b1 #b10001100001 #b1011110100010011111010011010000000011010101101011001)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
