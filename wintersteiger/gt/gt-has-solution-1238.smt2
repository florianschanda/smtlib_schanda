(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 0.422047054484048889122504988336004316806793212890625p-1022 {+ 1900730957307178 -1023 (9.39086e-309)}
; Y = -1.7445225885796025178109402986592613160610198974609375p-1018 {- 3353031652496015 -1018 (-6.21071e-307)}
; 0.422047054484048889122504988336004316806793212890625p-1022 > -1.7445225885796025178109402986592613160610198974609375p-1018 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000000000 #b0110110000001011010001101001100001100001110100101010)))
(assert (= y (fp #b1 #b00000000101 #b1011111010011001000010000100100100010101001010001111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
