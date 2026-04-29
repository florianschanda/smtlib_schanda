(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.895359448754346143317661699256859719753265380859375p938 {+ 4032340479772726 938 (4.4038e+282)}
; Y = 1.87248550541577429839890100993216037750244140625p868 {+ 3929325397076640 868 (3.68515e+261)}
; 1.895359448754346143317661699256859719753265380859375p938 > 1.87248550541577429839890100993216037750244140625p868 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110101001 #b1110010100110110010001101101111010010000100000110110)))
(assert (= y (fp #b0 #b11101100011 #b1101111101011011001101011100011111111110101010100000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
