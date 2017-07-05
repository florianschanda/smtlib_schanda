(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.93453156628160538588190320297144353389739990234375p-613 {- 4208756013671804 -613 (-5.691e-185)}
; Y = -1.6375228261817442731995697613456286489963531494140625p-940 {- 2871147562432289 -940 (-1.76194e-283)}
; -1.93453156628160538588190320297144353389739990234375p-613 < -1.6375228261817442731995697613456286489963531494140625p-940 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110011010 #b1110111100111101011101011111001001000010010101111100)))
(assert (= y (fp #b1 #b00001010011 #b1010001100110100101100100010100011100111011100100001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
