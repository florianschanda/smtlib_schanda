(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.568134745436277288632709314697422087192535400390625p-511 {- 2558651427843050 -511 (-2.33914e-154)}
; Y = 1.148688243790609408989666917477734386920928955078125p791 {+ 669632319329762 791 (1.49599e+238)}
; -1.568134745436277288632709314697422087192535400390625p-511 < 1.148688243790609408989666917477734386920928955078125p791 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000000000 #b1001000101110001010001110101011101011110101111101010)))
(assert (= y (fp #b0 #b11100010110 #b0010011000010000011011101100100001100001010111100010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
