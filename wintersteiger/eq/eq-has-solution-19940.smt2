(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.762158431764047517020799205056391656398773193359375p-1001 {+ 3432456429289846 -1001 (8.22279e-302)}
; Y = 1.765740493859427662215466625639237463474273681640625p865 {+ 3448588602807818 865 (4.34383e+260)}
; 1.762158431764047517020799205056391656398773193359375p-1001 = 1.765740493859427662215466625639237463474273681640625p865 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000010110 #b1100001100011100110100001010001011001100000101110110)))
(assert (= y (fp #b0 #b11101100000 #b1100010000000111100100011010101001011001011000001010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
