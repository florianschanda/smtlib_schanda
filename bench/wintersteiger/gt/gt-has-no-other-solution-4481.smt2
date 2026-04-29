(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.41070290848079782364266065997071564197540283203125p608 {- 1849641465594100 608 (-1.49856e+183)}
; Y = 1.179202881944747982601029434590600430965423583984375p475 {+ 807058032350086 475 (1.15037e+143)}
; -1.41070290848079782364266065997071564197540283203125p608 > 1.179202881944747982601029434590600430965423583984375p475 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001011111 #b0110100100100011110100110110100001001100000011110100)))
(assert (= y (fp #b0 #b10111011010 #b0010110111100000001111010111010101001101001110000110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
