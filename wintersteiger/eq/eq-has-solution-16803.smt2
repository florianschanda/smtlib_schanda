(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9325597678531474254981503690942190587520599365234375p44 {- 4199875823004151 44 (-3.3998e+013)}
; Y = -1.087148165903887075955935870297253131866455078125p-398 {- 392480447490768 -398 (-1.68403e-120)}
; -1.9325597678531474254981503690942190587520599365234375p44 = -1.087148165903887075955935870297253131866455078125p-398 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000101011 #b1110111010111100001111001010100001111110100111110111)))
(assert (= y (fp #b1 #b01001110001 #b0001011001001111010101111001101001110110101011010000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
