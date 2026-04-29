(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.82476789632531843921015024534426629543304443359375p44 {+ 3714424390557852 44 (3.21017e+013)}
; Y = 1.190985569984480907379520431277342140674591064453125p910 {+ 860122541815250 910 (1.03087e+274)}
; 1.82476789632531843921015024534426629543304443359375p44 = 1.190985569984480907379520431277342140674591064453125p910 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000101011 #b1101001100100011111111010010010110000010000010011100)))
(assert (= y (fp #b0 #b11110001101 #b0011000011100100011011100010100100010111010111010010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
