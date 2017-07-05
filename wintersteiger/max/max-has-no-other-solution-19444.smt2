(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3921568755186355392794439467252232134342193603515625p455 {- 1766117558456505 455 (-1.2952e+137)}
; Y = -1.9365002338592465225275418561068363487720489501953125p896 {- 4217622104240885 896 (-1.02304e+270)}
; -1.3921568755186355392794439467252232134342193603515625p455 M -1.9365002338592465225275418561068363487720489501953125p896 == -1.3921568755186355392794439467252232134342193603515625p455
; [HW: -1.3921568755186355392794439467252232134342193603515625p455] 

; mpf : - 1766117558456505 455
; mpfd: - 1766117558456505 455 (-1.2952e+137) class: Neg. norm. non-zero
; hwf : - 1766117558456505 455 (-1.2952e+137) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111000110 #b0110010001100100011001001001101101000001000010111001)))
(assert (= y (fp #b1 #b11101111111 #b1110111110111110011110101011010100011111001011110101)))
(assert (= r (fp #b1 #b10111000110 #b0110010001100100011001001001101101000001000010111001)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
