(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.973495295074584543471019060234539210796356201171875p794 {- 4384233048144830 794 (-2.05614e+239)}
; Y = -1.89475705270102690036537751439027488231658935546875p-803 {- 4029627529131468 -803 (-3.55195e-242)}
; -1.973495295074584543471019060234539210796356201171875p794 > -1.89475705270102690036537751439027488231658935546875p-803 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100011001 #b1111100100110110111111001101011100100111101110111110)))
(assert (= y (fp #b1 #b00011011100 #b1110010100001110110011000101011100110111010111001100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
