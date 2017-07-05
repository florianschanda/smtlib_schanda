(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8652578494760432281651674202294088900089263916015625p970 {+ 3896774928479705 970 (1.86138e+292)}
; Y = -1.8363428135905885962841921354993246495723724365234375p-234 {- 3766553183640567 -234 (-6.65173e-071)}
; 1.8652578494760432281651674202294088900089263916015625p970 m -1.8363428135905885962841921354993246495723724365234375p-234 == -1.8363428135905885962841921354993246495723724365234375p-234
; [HW: -1.8363428135905885962841921354993246495723724365234375p-234] 

; mpf : - 3766553183640567 -234
; mpfd: - 3766553183640567 -234 (-6.65173e-071) class: Neg. norm. non-zero
; hwf : - 3766553183640567 -234 (-6.65173e-071) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111001001 #b1101110110000001100010011101011000011011010111011001)))
(assert (= y (fp #b1 #b01100010101 #b1101011000011010100100000000100010011101101111110111)))
(assert (= r (fp #b1 #b01100010101 #b1101011000011010100100000000100010011101101111110111)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
