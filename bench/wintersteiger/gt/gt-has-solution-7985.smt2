(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.24302607947171228630622863420285284519195556640625p-163 {- 1094492160950116 -163 (-1.06314e-049)}
; Y = 1.2791337137375062837918449076823890209197998046875p-855 {+ 1257106489174776 -855 (5.32439e-258)}
; -1.24302607947171228630622863420285284519195556640625p-163 > 1.2791337137375062837918449076823890209197998046875p-855 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101011100 #b0011111000110110111101010000011101100111111101100100)))
(assert (= y (fp #b0 #b00010101000 #b0100011101110101010011101001101110110110101011111000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
