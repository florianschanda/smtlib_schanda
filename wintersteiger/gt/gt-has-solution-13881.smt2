(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2006754549002864873585849636583589017391204833984375p350 {- 903761903911335 350 (-2.75375e+105)}
; Y = -1.5710862954752096154464879873557947576045989990234375p711 {- 2571944027498551 711 (-1.69249e+214)}
; -1.2006754549002864873585849636583589017391204833984375p350 > -1.5710862954752096154464879873557947576045989990234375p711 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101011101 #b0011001101011111011101110111001111101000000110100111)))
(assert (= y (fp #b1 #b11011000110 #b1001001000110010101101100010001001000010100000110111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
