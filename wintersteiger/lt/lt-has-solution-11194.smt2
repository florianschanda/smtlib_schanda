(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7091834473972389307760977317229844629764556884765625p831 {- 3193878309435529 831 (-2.44746e+250)}
; Y = -1.8713573016759299516564851728617213666439056396484375p48 {- 3924244419134279 48 (-5.2674e+014)}
; -1.7091834473972389307760977317229844629764556884765625p831 < -1.8713573016759299516564851728617213666439056396484375p48 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100111110 #b1011010110001101000010111110000101101111100010001001)))
(assert (= y (fp #b1 #b10000101111 #b1101111100010001010001011010100111010100001101000111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
