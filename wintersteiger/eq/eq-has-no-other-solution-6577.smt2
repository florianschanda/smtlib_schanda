(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.90532163508540808294355883845128118991851806640625p-155 {+ 4077206178421092 -155 (4.17176e-047)}
; Y = 1.4487849732516921985592261989950202405452728271484375p919 {+ 2021147838305799 919 (6.42052e+276)}
; 1.90532163508540808294355883845128118991851806640625p-155 = 1.4487849732516921985592261989950202405452728271484375p919 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101100100 #b1110011111000011001010001001111100001101100101100100)))
(assert (= y (fp #b0 #b11110010110 #b0111001011100011100100100110111100001101011000000111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
