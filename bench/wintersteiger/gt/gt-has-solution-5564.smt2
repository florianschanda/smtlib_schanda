(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.673080967058854895412878249771893024444580078125p872 {- 3031287192436432 872 (-5.26833e+262)}
; Y = -1.100241171585675470367959860595874488353729248046875p783 {- 451446103000430 783 (-5.59725e+235)}
; -1.673080967058854895412878249771893024444580078125p872 > -1.100241171585675470367959860595874488353729248046875p783 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101100111 #b1010110001001111000010001100010100010011111011010000)))
(assert (= y (fp #b1 #b11100001110 #b0001100110101001011001111100100110101100010101101110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
