(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7731269856690772268592581895063631236553192138671875p-513 {+ 3481854404569331 -513 (6.61229e-155)}
; Y = 1.1791264422369209796670475043356418609619140625p645 {+ 806713778510400 645 (1.7215e+194)}
; 1.7731269856690772268592581895063631236553192138671875p-513 = 1.1791264422369209796670475043356418609619140625p645 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111111110 #b1100010111101011101001100110111100011010100011110011)))
(assert (= y (fp #b0 #b11010000100 #b0010110111011011001110110000001101000001101001000000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
