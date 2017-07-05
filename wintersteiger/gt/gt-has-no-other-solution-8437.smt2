(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.419912076881044260545650104177184402942657470703125p-268 {+ 1891115872969842 -268 (2.9938e-081)}
; Y = -1.0552838538817830293936594898696057498455047607421875p-956 {- 248976343741603 -956 (-1.73258e-288)}
; 1.419912076881044260545650104177184402942657470703125p-268 > -1.0552838538817830293936594898696057498455047607421875p-956 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011110011 #b0110101101111111010110111001110101100110010001110010)))
(assert (= y (fp #b1 #b00001000011 #b0000111000100111000101010010100001101011010010100011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
