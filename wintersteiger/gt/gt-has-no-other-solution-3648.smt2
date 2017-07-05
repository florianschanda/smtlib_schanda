(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7308603486580123043125922777107916772365570068359375p-567 {+ 3291502393876095 -567 (3.58306e-171)}
; Y = -1.2815122320789189558354337350465357303619384765625p371 {- 1267818383490856 371 (-6.16384e+111)}
; 1.7308603486580123043125922777107916772365570068359375p-567 > -1.2815122320789189558354337350465357303619384765625p371 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111001000 #b1011101100011001101010011110111101101101111001111111)))
(assert (= y (fp #b1 #b10101110010 #b0100100000010001001011111000011000110011111100101000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
