(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.36301983356001077396513210260309278964996337890625p365 {+ 1634895987148964 365 (1.02436e+110)}
; Y = 1.353097929067211158127292947028763592243194580078125p-999 {+ 1590211701772386 -999 (2.52559e-301)}
; 1.36301983356001077396513210260309278964996337890625p365 < 1.353097929067211158127292947028763592243194580078125p-999 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101101100 #b0101110011101110110111100010100011110000100010100100)))
(assert (= y (fp #b0 #b00000011000 #b0101101001100100101000000011100110100001000001100010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
