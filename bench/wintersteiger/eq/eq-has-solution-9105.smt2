(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8589598526381283516428766233730129897594451904296875p404 {+ 3868411272267291 404 (7.68048e+121)}
; Y = -1.0731339024647581492644121681223623454570770263671875p-397 {- 329365815888435 -397 (-3.32465e-120)}
; 1.8589598526381283516428766233730129897594451904296875p404 = -1.0731339024647581492644121681223623454570770263671875p-397 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110010011 #b1101101111100100110010101111101110101000011000011011)))
(assert (= y (fp #b1 #b01001110010 #b0001001010111000111001110100011101010000101000110011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
