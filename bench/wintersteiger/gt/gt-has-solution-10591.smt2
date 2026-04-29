(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9404553498402545841372557333670556545257568359375p312 {+ 4235434363099160 312 (1.61906e+094)}
; Y = -1.238441019923659514034852691111154854297637939453125p824 {- 1073842888478034 824 (-1.38545e+248)}
; 1.9404553498402545841372557333670556545257568359375p312 > -1.238441019923659514034852691111154854297637939453125p824 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100110111 #b1111000011000001101011101000101011101001100000011000)))
(assert (= y (fp #b1 #b11100110111 #b0011110100001010011110000111111010011000110101010010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
