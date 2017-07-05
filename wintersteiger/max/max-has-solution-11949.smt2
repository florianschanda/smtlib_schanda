(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8684648781014840945857713450095616281032562255859375p411 {+ 3911218101402207 411 (9.88128e+123)}
; Y = -1.2250646243210407959622898488305509090423583984375p-727 {- 1013600958226520 -727 (-1.73521e-219)}
; 1.8684648781014840945857713450095616281032562255859375p411 M -1.2250646243210407959622898488305509090423583984375p-727 == 1.8684648781014840945857713450095616281032562255859375p411
; [HW: 1.8684648781014840945857713450095616281032562255859375p411] 

; mpf : + 3911218101402207 411
; mpfd: + 3911218101402207 411 (9.88128e+123) class: Pos. norm. non-zero
; hwf : + 3911218101402207 411 (9.88128e+123) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110011010 #b1101111001010011101101101101100100101011101001011111)))
(assert (= y (fp #b1 #b00100101000 #b0011100110011101110101011101000011110010000001011000)))
(assert (= r (fp #b0 #b10110011010 #b1101111001010011101101101101100100101011101001011111)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
