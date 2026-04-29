(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0878562381043124229762497634510509669780731201171875p593 {- 395669321188755 593 (-3.52662e+178)}
; Y = 1.6005484404137160225900515797547996044158935546875p-50 {+ 2704629732465144 -50 (1.42157e-015)}
; -1.0878562381043124229762497634510509669780731201171875p593 = 1.6005484404137160225900515797547996044158935546875p-50 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001010000 #b0001011001111101101111110001010101101000010110010011)))
(assert (= y (fp #b0 #b01111001101 #b1001100110111101100010101110011100111101100111111000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
