(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.47205609248151603196674841456115245819091796875p573 {+ 2125951642197728 573 (4.55105e+172)}
; Y = 1.95462860921537906477851720410399138927459716796875p-847 {+ 4299265048739596 -847 (2.08285e-255)}
; 1.47205609248151603196674841456115245819091796875p573 > 1.95462860921537906477851720410399138927459716796875p-847 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000111100 #b0111100011011000101010110000011100010101111011100000)))
(assert (= y (fp #b0 #b00010110000 #b1111010001100010100010100110000001100111111100001100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
