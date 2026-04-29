(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 0.4445661728659160427667984549771063029766082763671875p-1022 {+ 2002148050460467 -1023 (9.89193e-309)}
; Y = 1.7099380861308901558004436083137989044189453125p403 {+ 3197276900155200 403 (3.53239e+121)}
; 0.4445661728659160427667984549771063029766082763671875p-1022 > 1.7099380861308901558004436083137989044189453125p403 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000000000 #b0111000111001111000101101011010101011101111100110011)))
(assert (= y (fp #b0 #b10110010010 #b1011010110111110100000001001111000011101111101000000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
