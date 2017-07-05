(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.78313470953689812148468263330869376659393310546875p280 {+ 3526925186051276 280 (3.46404e+084)}
; Y = -1.9135138490587915161000864827656187117099761962890625p-711 {- 4114100630218961 -711 (-1.77625e-214)}
; 1.78313470953689812148468263330869376659393310546875p280 > -1.9135138490587915161000864827656187117099761962890625p-711 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100010111 #b1100100001111011100001000010110111010010110011001100)))
(assert (= y (fp #b1 #b00100111000 #b1110100111011100000010110010101000100110100011010001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
