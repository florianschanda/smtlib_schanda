(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9082015612453864239483891651616431772708892822265625 381 {+ 4090176212802025 381 (9.39837e+114)}
; 1.9082015612453864239483891651616431772708892822265625 381 I == 1.9082015612453864239483891651616431772708892822265625 381
; [HW: 1.9082015612453864239483891651616431772708892822265625 381] 

; mpf : + 4090176212802025 381
; mpfd: + 4090176212802025 381 (9.39837e+114) class: Pos. norm. non-zero
; hwf : + 4090176212802025 381 (9.39837e+114) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101111100 #b1110100001111111111001011100001110111001100111101001)))
(assert (= r (fp #b0 #b10101111100 #b1110100001111111111001011100001110111001100111101001)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
