(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9818729203182707809816065491759218275547027587890625p185 {- 4421962518070545 185 (-9.71908e+055)}
; Y = -1.3995364410135506805232807892025448381900787353515625p767 {- 1799352166869561 767 (-1.0864e+231)}
; -1.9818729203182707809816065491759218275547027587890625p185 * -1.3995364410135506805232807892025448381900787353515625p767 == 1.3868516867216824639541528085828758776187896728515625p953
; [HW: 1.3868516867216824639541528085828758776187896728515625p953] 

; mpf : + 1742225112167417 953
; mpfd: + 1742225112167417 953 (1.05588e+287) class: Pos. norm. non-zero
; hwf : + 1742225112167417 953 (1.05588e+287) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010111000 #b1111101101011100000001100001000110011000010100010001)))
(assert (= y (fp #b1 #b11011111110 #b0110011001001000000001010010101110110110101000111001)))
(assert (= r (fp #b0 #b11110111000 #b0110001100001000101101100100111011011111001111111001)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
