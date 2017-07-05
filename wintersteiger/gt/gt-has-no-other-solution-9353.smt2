(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3382126776256180189506039823754690587520599365234375p668 {- 1523174488926711 668 (-1.63894e+201)}
; Y = 1.701786454559299333055832903482951223850250244140625p-720 {+ 3160565215246922 -720 (3.08538e-217)}
; -1.3382126776256180189506039823754690587520599365234375p668 > 1.701786454559299333055832903482951223850250244140625p-720 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010011011 #b0101011010010101000110110010010101111110100111110111)))
(assert (= y (fp #b0 #b00100101111 #b1011001110101000010001101110111100011011101001001010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
