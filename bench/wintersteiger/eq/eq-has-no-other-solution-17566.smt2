(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.986729456401864268855206319130957126617431640625p771 {+ 4443834412166928 771 (2.46755e+232)}
; Y = -1.6517165429652405084226529652369208633899688720703125p121 {- 2935070380049445 121 (-4.39102e+036)}
; 1.986729456401864268855206319130957126617431640625p771 = -1.6517165429652405084226529652369208633899688720703125p121 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100000010 #b1111110010011010010011010011100100111110111100010000)))
(assert (= y (fp #b1 #b10001111000 #b1010011011010110111001010011011001001100010000100101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
