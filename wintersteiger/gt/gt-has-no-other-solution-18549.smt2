(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9616067662695797491068105955491773784160614013671875p889 {- 4330691874248627 889 (-8.09614e+267)}
; Y = 1.1807550323445517026499373969272710382938385009765625p391 {+ 814048296312265 391 (5.95509e+117)}
; -1.9616067662695797491068105955491773784160614013671875p889 > 1.1807550323445517026499373969272710382938385009765625p391 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101111000 #b1111011000101011110111000110110010111101011110110011)))
(assert (= y (fp #b0 #b10110000110 #b0010111001000101111101100011100010000001110111001001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
