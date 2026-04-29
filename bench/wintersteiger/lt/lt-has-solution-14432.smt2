(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.254496560713123987085282351472415030002593994140625p-303 {- 1146150615994698 -303 (-7.69805e-092)}
; Y = 1.1462805971366691881740962344338186085224151611328125p403 {+ 658789242756237 403 (2.36799e+121)}
; -1.254496560713123987085282351472415030002593994140625p-303 < 1.1462805971366691881740962344338186085224151611328125p403 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011010000 #b0100000100100110101011111100010100110101000101001010)))
(assert (= y (fp #b0 #b10110010010 #b0010010101110010101001010010110010111101110010001101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
