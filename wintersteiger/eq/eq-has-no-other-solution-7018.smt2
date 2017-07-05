(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8766431404062833276924493475235067307949066162109375p339 {+ 3948049720470639 339 (2.1016e+102)}
; Y = 1.4216750057179095012571679035318084061145782470703125p452 {+ 1899055398622629 452 (1.65333e+136)}
; 1.8766431404062833276924493475235067307949066162109375p339 = 1.4216750057179095012571679035318084061145782470703125p452 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101010010 #b1110000001101011101011110101001001001110110001101111)))
(assert (= y (fp #b0 #b10111000011 #b0110101111110010111001001010011100011001010110100101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
