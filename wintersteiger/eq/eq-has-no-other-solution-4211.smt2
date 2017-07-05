(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7228723464266961773461162010789848864078521728515625p49 {+ 3255527630003705 49 (9.69891e+014)}
; Y = -1.37882885013382061600850647664628922939300537109375p-1001 {- 1706093468299868 -1001 (-6.43405e-302)}
; 1.7228723464266961773461162010789848864078521728515625p49 = -1.37882885013382061600850647664628922939300537109375p-1001 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000110000 #b1011100100001110001010010111111100010101110111111001)))
(assert (= y (fp #b1 #b00000010110 #b0110000011111010111011010111001000011011001001011100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
