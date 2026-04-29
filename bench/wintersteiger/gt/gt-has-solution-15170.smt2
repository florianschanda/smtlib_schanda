(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3929364270414605897485671448521316051483154296875p-551 {- 1769628346404216 -551 (-1.88975e-166)}
; Y = -1.0332995747003577147182795670232735574245452880859375p774 {- 149967952212127 774 (-1.0267e+233)}
; -1.3929364270414605897485671448521316051483154296875p-551 > -1.0332995747003577147182795670232735574245452880859375p774 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111011000 #b0110010010010111011110110100111110001100110101111000)))
(assert (= y (fp #b1 #b11100000101 #b0000100010000110010100100010100001001111000010011111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
