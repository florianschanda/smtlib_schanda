(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4679677296255608798247749291476793587207794189453125p-321 {- 2107539292763093 -321 (-3.43627e-097)}
; Y = 1.0193391358520889067307280129170976579189300537109375p560 {+ 87095725017135 560 (3.84695e+168)}
; -1.4679677296255608798247749291476793587207794189453125p-321 + 1.0193391358520889067307280129170976579189300537109375p560 == 1.019339135852088684686123087885789573192596435546875p560
; [HW: 1.019339135852088684686123087885789573192596435546875p560] 

; mpf : + 87095725017134 560
; mpfd: + 87095725017134 560 (3.84695e+168) class: Pos. norm. non-zero
; hwf : + 87095725017134 560 (3.84695e+168) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010111110 #b0111011111001100101110111010111001010011001111010101)))
(assert (= y (fp #b0 #b11000101111 #b0000010011110011011010001101110000000100100000101111)))
(assert (= r (fp #b0 #b11000101111 #b0000010011110011011010001101110000000100100000101110)))
(assert (= (fp.add roundTowardNegative x y) r))
(check-sat)
(exit)
