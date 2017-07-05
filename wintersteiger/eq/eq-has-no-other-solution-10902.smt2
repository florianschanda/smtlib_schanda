(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.084874722173583716511302554863505065441131591796875p782 {+ 382241767154126 782 (2.75954e+235)}
; Y = -1.49518753910449841981744611985050141811370849609375p44 {- 2230126416589532 44 (-2.63036e+013)}
; 1.084874722173583716511302554863505065441131591796875p782 = -1.49518753910449841981744611985050141811370849609375p44 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100001101 #b0001010110111010010110011000101111111110000111001110)))
(assert (= y (fp #b1 #b10000101011 #b0111111011000100100111000100110111010111001011011100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
