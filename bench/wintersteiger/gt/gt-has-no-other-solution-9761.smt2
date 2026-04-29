(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.65886533679803793717155713238753378391265869140625p684 {+ 2967265685290980 684 (1.33146e+206)}
; Y = 1.5977135052313737872964338748715817928314208984375p-240 {+ 2691862319434328 -240 (9.04274e-073)}
; 1.65886533679803793717155713238753378391265869140625p684 > 1.5977135052313737872964338748715817928314208984375p-240 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010101011 #b1010100010101011011001100001001000000011111111100100)))
(assert (= y (fp #b0 #b01100001111 #b1001100100000011110000001001010101011000101001011000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
