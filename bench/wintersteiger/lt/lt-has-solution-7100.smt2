(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.736959144182657066579622551216743886470794677734375p374 {- 3318968927128294 374 (-6.68356e+112)}
; Y = 1.7999852929098023590626098666689358651638031005859375p438 {+ 3602813467050463 438 (1.27764e+132)}
; -1.736959144182657066579622551216743886470794677734375p374 < 1.7999852929098023590626098666689358651638031005859375p438 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101110101 #b1011110010101001010110101011111011000000101011100110)))
(assert (= y (fp #b0 #b10110110101 #b1100110011001011110101100000111001010100000111011111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
