(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.992602967154434967511633658432401716709136962890625p391 {+ 4470286353003562 391 (1.00496e+118)}
; Y = 1.391613417963609489191867396584711968898773193359375p698 {+ 1763670043214198 698 (1.83002e+210)}
; 1.992602967154434967511633658432401716709136962890625p391 < 1.391613417963609489191867396584711968898773193359375p698 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110000110 #b1111111000011011001110100110000111010111010000101010)))
(assert (= y (fp #b0 #b11010111001 #b0110010001000000110001101110011011010100000101110110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
