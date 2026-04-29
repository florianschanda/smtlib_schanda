(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.043174021157284414584864862263202667236328125p-262 {- 194438505596032 -262 (-1.40766e-079)}
; Y = 1.7131783192031189155812853641691617667675018310546875p519 {+ 3211869612611883 519 (2.94016e+156)}
; -1.043174021157284414584864862263202667236328125p-262 > 1.7131783192031189155812853641691617667675018310546875p519 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011111001 #b0000101100001101011100111110000011101000010010000000)))
(assert (= y (fp #b0 #b11000000110 #b1011011010010010110110101011010100110001100100101011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
