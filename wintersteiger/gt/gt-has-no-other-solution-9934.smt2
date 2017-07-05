(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2043418631161026954856652082526125013828277587890625p826 {- 920273938585873 826 (-5.38922e+248)}
; Y = 1.2259414221826421265149065220612101256847381591796875p-965 {+ 1017549704749307 -965 (3.93119e-291)}
; -1.2043418631161026954856652082526125013828277587890625p826 > 1.2259414221826421265149065220612101256847381591796875p-965 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100111001 #b0011010001001111101111111001001101001001100100010001)))
(assert (= y (fp #b0 #b00000111010 #b0011100111010111010011000000101100010110000011111011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
