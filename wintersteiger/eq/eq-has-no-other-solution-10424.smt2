(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.63290009564183691281868959777057170867919921875p944 {+ 2850328634895328 944 (2.42815e+284)}
; Y = 1.4447117413460122126167561873444356024265289306640625p608 {+ 2002803632613185 608 (1.53468e+183)}
; 1.63290009564183691281868959777057170867919921875p944 = 1.4447117413460122126167561873444356024265289306640625p608 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110101111 #b1010001000000101101111011001110001101010101111100000)))
(assert (= y (fp #b0 #b11001011111 #b0111000111011000101000001111000100111010011101000001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
