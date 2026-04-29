(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1427825118373089452461499604396522045135498046875p401 {- 643035267105528 401 (-5.9019e+120)}
; Y = -1.7159898190624442992913145644706673920154571533203125p-71 {- 3224531482330693 -71 (-7.2675e-022)}
; -1.1427825118373089452461499604396522045135498046875p401 > -1.7159898190624442992913145644706673920154571533203125p-71 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110010000 #b0010010010001101011001010000101011001000001011111000)))
(assert (= y (fp #b1 #b01110111000 #b1011011101001011000110111101100100100100011001000101)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
