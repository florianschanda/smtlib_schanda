(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1514948059419989334628553478978574275970458984375p-629 {- 682271951588952 -629 (-5.16886e-190)}
; Y = -1.1828126481659404500845766960992477834224700927734375p59 {- 823314974158743 59 (-6.81845e+017)}
; -1.1514948059419989334628553478978574275970458984375p-629 % -1.1828126481659404500845766960992477834224700927734375p59 == -1.1514948059419989334628553478978574275970458984375p-629
; [HW: -1.1514948059419989334628553478978574275970458984375p-629] 

; mpf : - 682271951588952 -629
; mpfd: - 682271951588952 -629 (-5.16886e-190) class: Neg. norm. non-zero
; hwf : - 682271951588952 -629 (-5.16886e-190) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110001010 #b0010011011001000010111010001010100001000111001011000)))
(assert (= y (fp #b1 #b10000111010 #b0010111011001100110011110100100100101010111110010111)))
(assert (= r (fp #b1 #b00110001010 #x26c85d1508e58)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
