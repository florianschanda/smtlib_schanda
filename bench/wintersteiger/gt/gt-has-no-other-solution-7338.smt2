(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0313356466632159769147847327985800802707672119140625p-781 {- 141123206635873 -781 (-8.10911e-236)}
; Y = -1.991656581809944537297951683285646140575408935546875p-592 {- 4466024212318766 -592 (-1.22873e-178)}
; -1.0313356466632159769147847327985800802707672119140625p-781 > -1.991656581809944537297951683285646140575408935546875p-592 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011110010 #b0000100000000101100111001110100110011110000101100001)))
(assert (= y (fp #b1 #b00110101111 #b1111110111011101001101001010101110111100101000101110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
