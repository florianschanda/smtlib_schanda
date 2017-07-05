(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.870978939401236829098706948570907115936279296875p727 {- 3922540426934960 727 (-1.32092e+219)}
; Y = 1.6526390833427149207324191593215800821781158447265625p622 {+ 2939225132549673 622 (2.87631e+187)}
; -1.870978939401236829098706948570907115936279296875p727 = 1.6526390833427149207324191593215800821781158447265625p622 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011010110 #b1101111011111000011110011100110000111011101010110000)))
(assert (= y (fp #b0 #b11001101101 #b1010011100010011010110101101111100001100011000101001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
