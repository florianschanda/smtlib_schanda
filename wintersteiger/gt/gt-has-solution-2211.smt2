(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3243830290248157499632952749379910528659820556640625p-561 {- 1460891288641473 -561 (-1.75463e-169)}
; Y = 1.9270760920761313972349171308451332151889801025390625p637 {+ 4175179542818161 637 (1.09902e+192)}
; -1.3243830290248157499632952749379910528659820556640625p-561 > 1.9270760920761313972349171308451332151889801025390625p637 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111001110 #b0101001100001010110001000010010100001001111111000001)))
(assert (= y (fp #b0 #b11001111100 #b1110110101010100110110111101100001011110110101110001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
