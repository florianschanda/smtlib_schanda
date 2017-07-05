(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8913146133485694289078082874766550958156585693359375p-534 {- 4014124160546495 -534 (-3.36315e-161)}
; Y = 1.4484309648102040579686899945954792201519012451171875p-516 {+ 2019553526020627 -516 (6.75181e-156)}
; -1.8913146133485694289078082874766550958156585693359375p-534 % 1.4484309648102040579686899945954792201519012451171875p-516 == -1.8913146133485694289078082874766550958156585693359375p-534
; [HW: -1.8913146133485694289078082874766550958156585693359375p-534] 

; mpf : - 4014124160546495 -534
; mpfd: - 4014124160546495 -534 (-3.36315e-161) class: Neg. norm. non-zero
; hwf : - 4014124160546495 -534 (-3.36315e-161) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111101001 #b1110010000101101001100011100101011000111011010111111)))
(assert (= y (fp #b0 #b00111111011 #b0111001011001100010111110010100001011111101000010011)))
(assert (= r (fp #b1 #b00111101001 #xe42d31cac76bf)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
