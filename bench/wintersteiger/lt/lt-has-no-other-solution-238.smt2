(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.31693021900497075904468147200532257556915283203125p369 {+ 1427326816213236 369 (1.58355e+111)}
; Y = -1.2781108727787804379971703383489511907100677490234375p-537 {- 1252500023014199 -537 (-2.84093e-162)}
; 1.31693021900497075904468147200532257556915283203125p369 < -1.2781108727787804379971703383489511907100677490234375p-537 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101110000 #b0101000100100010010101101011110110111101100011110100)))
(assert (= y (fp #b1 #b00111100110 #b0100011100110010010001100010111100111111001100110111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
