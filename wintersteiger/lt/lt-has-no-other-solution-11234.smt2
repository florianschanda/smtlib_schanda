(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7094189220472830736952118968474678695201873779296875p261 {+ 3194938792981723 261 (6.33399e+078)}
; Y = 1.9106490988301463307408312175539322197437286376953125p782 {+ 4101198942156725 782 (4.86001e+235)}
; 1.7094189220472830736952118968474678695201873779296875p261 < 1.9106490988301463307408312175539322197437286376953125p782 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100000100 #b1011010110011100011110100111110101011011010011011011)))
(assert (= y (fp #b0 #b11100001101 #b1110100100100000010011001010000110011011011110110101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
