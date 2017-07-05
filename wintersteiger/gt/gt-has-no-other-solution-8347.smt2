(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.181527250828422470618761508376337587833404541015625p477 {- 817526059188474 477 (-4.61054e+143)}
; Y = 1.6117969007804420211726892375736497342586517333984375p392 {+ 2755288294381223 392 (1.62581e+118)}
; -1.181527250828422470618761508376337587833404541015625p477 > 1.6117969007804420211726892375736497342586517333984375p392 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111011100 #b0010111001111000100100011110010110100100000011111010)))
(assert (= y (fp #b0 #b10110000111 #b1001110010011110101110001100000010100101011010100111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
