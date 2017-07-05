(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7052797493653895077869719898444600403308868408203125p-586 {- 3176297616433925 -586 (-6.73315e-177)}
; Y = 1.9956152182849911103090789765701629221439361572265625p-613 {+ 4483852326072681 -613 (5.87069e-185)}
; -1.7052797493653895077869719898444600403308868408203125p-586 m 1.9956152182849911103090789765701629221439361572265625p-613 == -1.7052797493653895077869719898444600403308868408203125p-586
; [HW: -1.7052797493653895077869719898444600403308868408203125p-586] 

; mpf : - 3176297616433925 -586
; mpfd: - 3176297616433925 -586 (-6.73315e-177) class: Neg. norm. non-zero
; hwf : - 3176297616433925 -586 (-6.73315e-177) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110110101 #b1011010010001101001101101011001000001110001100000101)))
(assert (= y (fp #b0 #b00110011010 #b1111111011100000101000111001000111101111000101101001)))
(assert (= r (fp #b1 #b00110110101 #b1011010010001101001101101011001000001110001100000101)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
