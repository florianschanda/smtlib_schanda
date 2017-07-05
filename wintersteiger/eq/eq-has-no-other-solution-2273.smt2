(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9947103308802527354970379747101105749607086181640625p-950 {+ 4479777075493889 -950 (2.09596e-286)}
; Y = -1.00056355440513389254419962526299059391021728515625p739 {- 2538023408964 739 (-2.89342e+222)}
; 1.9947103308802527354970379747101105749607086181640625p-950 = -1.00056355440513389254419962526299059391021728515625p739 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001001001 #b1111111010100101010101100001010000011111110000000001)))
(assert (= y (fp #b1 #b11011100010 #b0000000000100100111011101101111110111101010101000100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
