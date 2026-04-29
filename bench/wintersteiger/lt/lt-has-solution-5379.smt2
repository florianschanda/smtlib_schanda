(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.40843017534934045187355877715162932872772216796875p937 {+ 1839405985510156 937 (1.63622e+282)}
; Y = 1.926744052607555435230324292206205427646636962890625p568 {+ 4173684169991210 568 (1.86149e+171)}
; 1.40843017534934045187355877715162932872772216796875p937 < 1.926744052607555435230324292206205427646636962890625p568 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110101000 #b0110100010001110111000010100010111010011001100001100)))
(assert (= y (fp #b0 #b11000110111 #b1110110100111111000110010010010110110110010000101010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
