(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.212396861211978649208731440012343227863311767578125p968 {- 956550425008930 968 (-3.02469e+291)}
; Y = 1.32830444863837282554186458582989871501922607421875p-635 {+ 1478551792551852 -635 (9.31645e-192)}
; -1.212396861211978649208731440012343227863311767578125p968 = 1.32830444863837282554186458582989871501922607421875p-635 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111000111 #b0011011001011111101001000000010010101101101100100010)))
(assert (= y (fp #b0 #b00110000100 #b0101010000001011110000101010011000001000011110101100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
