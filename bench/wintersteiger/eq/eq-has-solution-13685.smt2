(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.725684468865750886834575794637203216552734375p-861 {+ 3268192303572352 -861 (1.12237e-259)}
; Y = -1.9020239639630884820320488870493136346340179443359375p426 {- 4062354787983423 426 (-3.29605e+128)}
; 1.725684468865750886834575794637203216552734375p-861 = -1.9020239639630884820320488870493136346340179443359375p426 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010100010 #b1011100111000110011101010001010011111110010110000000)))
(assert (= y (fp #b1 #b10110101001 #b1110011011101011000010101110000101101110000000111111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
