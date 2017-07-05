(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4243971620264372912600947529426775872707366943359375p-895 {- 1911314900759359 -895 (-5.39244e-270)}
; Y = 1.1839414488571498029756412506685592234134674072265625p462 {+ 828398640531049 462 (1.4099e+139)}
; -1.4243971620264372912600947529426775872707366943359375p-895 > 1.1839414488571498029756412506685592234134674072265625p462 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010000000 #b0110110010100101010010101101101101101011001100111111)))
(assert (= y (fp #b0 #b10111001101 #b0010111100010110110010010110101100111000011001101001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
