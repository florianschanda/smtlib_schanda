(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6706670075336436109836313335108570754528045654296875p-858 {+ 3020415685218203 -858 (8.69268e-259)}
; Y = -1.0423219654298299108319270089850760996341705322265625p-666 {- 190601187739369 -666 (-3.40428e-201)}
; 1.6706670075336436109836313335108570754528045654296875p-858 < -1.0423219654298299108319270089850760996341705322265625p-666 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010100101 #b1010101110110000110101010011111111011100111110011011)))
(assert (= y (fp #b1 #b00101100101 #b0000101011010101100111001100000101101100011011101001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
