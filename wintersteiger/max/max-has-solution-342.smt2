(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.430834934411896686157206204370595514774322509765625p-248 {- 1940308050075610 -248 (-3.16337e-075)}
; Y = -1.6811829156877908797440568378078751266002655029296875p533 {- 3067775125262683 533 (-4.72719e+160)}
; -1.430834934411896686157206204370595514774322509765625p-248 M -1.6811829156877908797440568378078751266002655029296875p533 == -1.430834934411896686157206204370595514774322509765625p-248
; [HW: -1.430834934411896686157206204370595514774322509765625p-248] 

; mpf : - 1940308050075610 -248
; mpfd: - 1940308050075610 -248 (-3.16337e-075) class: Neg. norm. non-zero
; hwf : - 1940308050075610 -248 (-3.16337e-075) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100000111 #b0110111001001011001100101100000101000101111111011010)))
(assert (= y (fp #b1 #b11000010100 #b1010111001100010000000001110100101111001000101011011)))
(assert (= r (fp #b1 #b01100000111 #b0110111001001011001100101100000101000101111111011010)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
