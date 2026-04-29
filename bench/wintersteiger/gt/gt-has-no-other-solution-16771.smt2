(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6745013142314568721502610060269944369792938232421875p-937 {+ 3037683867433699 -937 (1.44138e-282)}
; Y = -zero {- 0 -1023 (-0)}
; 1.6745013142314568721502610060269944369792938232421875p-937 > -zero == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001010110 #b1010110010101100000111100011110110111011101011100011)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
