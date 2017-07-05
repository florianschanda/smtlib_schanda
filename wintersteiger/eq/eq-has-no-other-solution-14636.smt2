(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.321197522711119898275455852854065597057342529296875p7 {+ 1446545043594126 7 (169.113)}
; Y = 1.804602302740758279497867988538928329944610595703125p-972 {+ 3623606630804722 -972 (4.52091e-293)}
; 1.321197522711119898275455852854065597057342529296875p7 = 1.804602302740758279497867988538928329944610595703125p-972 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000000110 #b0101001000111010000000000011011110011001101110001110)))
(assert (= y (fp #b0 #b00000110011 #b1100110111111010011010101010000010001110110011110010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
