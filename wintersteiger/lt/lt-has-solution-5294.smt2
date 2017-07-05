(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.33888180372794085570831157383508980274200439453125p564 {+ 1526187964991796 564 (8.08462e+169)}
; Y = 0.7071423295911898332377631959388963878154754638671875p-1022 {+ 3184685932044787 -1023 (1.57344e-308)}
; 1.33888180372794085570831157383508980274200439453125p564 < 0.7071423295911898332377631959388963878154754638671875p-1022 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000110011 #b0101011011000000111101010011100000111000100100110100)))
(assert (= y (fp #b0 #b00000000000 #b1011010100000111010001111001101100110110000111110011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
