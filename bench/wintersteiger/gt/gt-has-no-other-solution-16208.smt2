(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.362907170492747344070494364132173359394073486328125p-610 {+ 1634388597801218 -610 (3.20752e-184)}
; Y = -1.61511825561444499754770731669850647449493408203125p-873 {- 2770246346774004 -873 (-2.56459e-263)}
; 1.362907170492747344070494364132173359394073486328125p-610 > -1.61511825561444499754770731669850647449493408203125p-873 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110011101 #b0101110011100111011110111111110011000000000100000010)))
(assert (= y (fp #b1 #b00010010110 #b1001110101111000011000111101011100001001010111110100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
