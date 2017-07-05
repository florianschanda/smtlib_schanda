(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.23091489947728849330133016337640583515167236328125p41 {- 1039948255240212 41 (-2.70681e+012)}
; Y = -1.2989263961232706545700921196839772164821624755859375p-56 {- 1346244806191967 -56 (-1.80262e-017)}
; -1.23091489947728849330133016337640583515167236328125p41 * -1.2989263961232706545700921196839772164821624755859375p-56 == 1.5988678543124723585577839912730269134044647216796875p-15
; [HW: 1.5988678543124723585577839912730269134044647216796875p-15] 

; mpf : + 2697061045525819 -15
; mpfd: + 2697061045525819 -15 (4.87936e-005) class: Pos. norm. non-zero
; hwf : + 2697061045525819 -15 (4.87936e-005) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000101000 #b0011101100011101001111010010010101101010000000010100)))
(assert (= y (fp #b1 #b01111000111 #b0100110010000110011100001011011101000010101101011111)))
(assert (= r (fp #b0 #b01111110000 #b1001100101001111011001110101100011100101110100111011)))
(assert  (not (= (fp.mul roundTowardPositive x y) r)))
(check-sat)
(exit)
