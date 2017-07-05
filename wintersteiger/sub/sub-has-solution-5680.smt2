(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1132924108895678738662127216230146586894989013671875p609 {- 510223659466163 609 (-2.36525e+183)}
; Y = 1.838559019347445921965800152975134551525115966796875p107 {+ 3776534087061326 107 (2.98323e+032)}
; -1.1132924108895678738662127216230146586894989013671875p609 - 1.838559019347445921965800152975134551525115966796875p107 == -1.11329241088956809591081764665432274341583251953125p609
; [HW: -1.11329241088956809591081764665432274341583251953125p609] 

; mpf : - 510223659466164 609
; mpfd: - 510223659466164 609 (-2.36525e+183) class: Neg. norm. non-zero
; hwf : - 510223659466164 609 (-2.36525e+183) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001100000 #b0001110100000000101110110011111110100111110110110011)))
(assert (= y (fp #b0 #b10001101010 #b1101011010101011110011011100101111011100111101001110)))
(assert (= r (fp #b1 #b11001100000 #b0001110100000000101110110011111110100111110110110100)))
(assert (= (fp.sub roundTowardNegative x y) r))
(check-sat)
(exit)
