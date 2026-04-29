(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.847793233882930596934102140949107706546783447265625p339 {- 3818121292202394 339 (-2.06929e+102)}
; Y = 1.8007041280839015673365111069870181381702423095703125p461 {+ 3606050812872677 461 (1.07219e+139)}
; -1.847793233882930596934102140949107706546783447265625p339 > 1.8007041280839015673365111069870181381702423095703125p461 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101010010 #b1101100100001000111110100011010101001100000110011010)))
(assert (= y (fp #b0 #b10111001100 #b1100110011111010111100100001101111100100011111100101)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
