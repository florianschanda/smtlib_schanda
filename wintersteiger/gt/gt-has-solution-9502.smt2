(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4467171631610249438182336234604008495807647705078125p122 {+ 2011835249551997 122 (7.69207e+036)}
; Y = 1.139597174496470355364863280556164681911468505859375p880 {+ 628689783044278 880 (9.18645e+264)}
; 1.4467171631610249438182336234604008495807647705078125p122 > 1.139597174496470355364863280556164681911468505859375p880 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001111001 #b0111001001011100000011100101011001010110101001111101)))
(assert (= y (fp #b0 #b11101101111 #b0010001110111100101000111111001100010011100010110110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
