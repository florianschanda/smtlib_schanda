(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.68958805493421326815450811409391462802886962890625p601 {- 3105628507240868 601 (-1.40219e+181)}
; Y = 1.8251674190156597088474654810852371156215667724609375p376 {+ 3716223680797199 376 (2.80919e+113)}
; -1.68958805493421326815450811409391462802886962890625p601 > 1.8251674190156597088474654810852371156215667724609375p376 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001011000 #b1011000010001000110101111011111110100111100110100100)))
(assert (= y (fp #b0 #b10101110111 #b1101001100111110001011000000011001100101101000001111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
