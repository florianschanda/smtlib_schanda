(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4690680372746867110578250503749586641788482666015625p880 {+ 2112494637881689 880 (1.18424e+265)}
; 1.4690680372746867110578250503749586641788482666015625p880 S == 1.2120511694126971935503433996927924454212188720703125p440
; [HW: 1.2120511694126971935503433996927924454212188720703125p440] 

; mpf : + 954993567550501 440
; mpfd: + 954993567550501 440 (3.44127e+132) class: Pos. norm. non-zero
; hwf : + 954993567550501 440 (3.44127e+132) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101101111 #b0111100000010100110101111100011110110001100101011001)))
(assert (= r (fp #b0 #b10110110111 #b0011011001001000111111000100010110110100110000100101)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
