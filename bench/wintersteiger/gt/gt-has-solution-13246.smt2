(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.115268423672786557432345944107510149478912353515625p691 {+ 519122829900346 691 (1.14579e+208)}
; Y = -1.2125376263342086957663923385553061962127685546875p365 {- 957184374760952 365 (-9.11263e+109)}
; 1.115268423672786557432345944107510149478912353515625p691 > -1.2125376263342086957663923385553061962127685546875p365 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010110010 #b0001110110000010001110110011110111101111101000111010)))
(assert (= y (fp #b1 #b10101101100 #b0011011001101000110111011010101001000110010111111000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
