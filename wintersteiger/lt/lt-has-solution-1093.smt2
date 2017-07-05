(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9322246727479395200788303554872982203960418701171875p895 {- 4198366688813203 895 (-5.10392e+269)}
; Y = 1.2934463373240288053267477152985520660877227783203125p975 {+ 1321564815425733 975 (4.13042e+293)}
; -1.9322246727479395200788303554872982203960418701171875p895 < 1.2934463373240288053267477152985520660877227783203125p975 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101111110 #b1110111010100110010001101011000111111010000010010011)))
(assert (= y (fp #b0 #b11111001110 #b0100101100011111010011001001010111110000000011000101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
