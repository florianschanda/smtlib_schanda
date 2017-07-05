(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.187467753475061282841807042132131755352020263671875p-732 {- 844279704694270 -732 (-5.25612e-221)}
; Y = 1.40383974332037109178372702444903552532196044921875p628 {+ 1818732517535020 628 (1.5637e+189)}
; -1.187467753475061282841807042132131755352020263671875p-732 < 1.40383974332037109178372702444903552532196044921875p628 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100100011 #b0010111111111101111000101111111000111010110111111110)))
(assert (= y (fp #b0 #b11001110011 #b0110011101100010000010101001101001100010110100101100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
