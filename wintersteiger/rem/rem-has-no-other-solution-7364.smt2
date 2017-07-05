(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2605786285084066289385873460560105741024017333984375p-69 {- 1173541814251175 -69 (-2.1355e-021)}
; Y = 1.8920611231628183812603083424619399011135101318359375p55 {+ 4017486141867775 55 (6.81687e+016)}
; -1.2605786285084066289385873460560105741024017333984375p-69 % 1.8920611231628183812603083424619399011135101318359375p55 == -1.2605786285084066289385873460560105741024017333984375p-69
; [HW: -1.2605786285084066289385873460560105741024017333984375p-69] 

; mpf : - 1173541814251175 -69
; mpfd: - 1173541814251175 -69 (-2.1355e-021) class: Neg. norm. non-zero
; hwf : - 1173541814251175 -69 (-2.1355e-021) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110111010 #b0100001010110101010001111110111101111010111010100111)))
(assert (= y (fp #b0 #b10000110110 #b1110010001011110000111100010011000000100011011111111)))
(assert (= r (fp #b1 #b01110111010 #x42b547ef7aea7)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
