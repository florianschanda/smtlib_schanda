(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.32583073725585176561025946284644305706024169921875p-249 {+ 1467411186891308 -249 (1.46561e-075)}
; Y = -1.506406060555609993656389633542858064174652099609375p46 {- 2280650145616406 46 (-1.06004e+014)}
; 1.32583073725585176561025946284644305706024169921875p-249 > -1.506406060555609993656389633542858064174652099609375p46 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100000110 #b0101001101101001101001001010100010001011101000101100)))
(assert (= y (fp #b1 #b10000101101 #b1000000110100011110100111101110010010101001000010110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
