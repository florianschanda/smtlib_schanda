(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4887735747236643391033794614486396312713623046875p221 {+ 2201240488994040 221 (5.01716e+066)}
; Y = -1.967429949928845456241788269835524260997772216796875p-705 {- 4356917162006606 -705 (-1.16883e-212)}
; 1.4887735747236643391033794614486396312713623046875p221 = -1.967429949928845456241788269835524260997772216796875p-705 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011011100 #b0111110100100000010000111101011010010110010011111000)))
(assert (= y (fp #b1 #b00100111110 #b1111011110101001011111010011110000011101100001001110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
