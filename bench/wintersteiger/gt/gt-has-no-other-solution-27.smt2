(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3667144727430218242858472876832820475101470947265625p27 {+ 1651535162796841 27 (1.83437e+008)}
; Y = 1.1503348226259590969533519455580972135066986083984375p320 {+ 677047851159079 320 (2.4571e+096)}
; 1.3667144727430218242858472876832820475101470947265625p27 > 1.1503348226259590969533519455580972135066986083984375p320 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000011010 #b0101110111100000111111111110101101100110101100101001)))
(assert (= y (fp #b0 #b10100111111 #b0010011001111100010101111100101010100000111000100111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
