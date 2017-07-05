(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.999770527760512006665294393314979970455169677734375p-54 {- 4502566176278246 -54 (-1.1101e-016)}
; Y = -1.632606586914042257063783836201764643192291259765625p579 {- 2849006789098202 579 (-3.23035e+174)}
; -1.999770527760512006665294393314979970455169677734375p-54 - -1.632606586914042257063783836201764643192291259765625p579 == 1.632606586914042257063783836201764643192291259765625p579
; [HW: 1.632606586914042257063783836201764643192291259765625p579] 

; mpf : + 2849006789098202 579
; mpfd: + 2849006789098202 579 (3.23035e+174) class: Pos. norm. non-zero
; hwf : + 2849006789098202 579 (3.23035e+174) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111001001 #b1111111111110000111101100001100000111100011011100110)))
(assert (= y (fp #b1 #b11001000010 #b1010000111110010100000010101101000000111101011011010)))
(assert (= r (fp #b0 #b11001000010 #b1010000111110010100000010101101000000111101011011010)))
(assert  (not (= (fp.sub roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
