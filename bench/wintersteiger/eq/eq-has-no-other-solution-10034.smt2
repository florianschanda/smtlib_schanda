(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6716120296851453286279820531490258872509002685546875p766 {+ 3024671686627563 766 (6.48802e+230)}
; Y = -1.6983389468003531330708710811450146138668060302734375p-50 {- 3145039020588375 -50 (-1.50843e-015)}
; 1.6716120296851453286279820531490258872509002685546875p766 = -1.6983389468003531330708710811450146138668060302734375p-50 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011111101 #b1010101111101110110001000001011100011001000011101011)))
(assert (= y (fp #b1 #b01111001101 #b1011001011000110010101110101101000000111110101010111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
