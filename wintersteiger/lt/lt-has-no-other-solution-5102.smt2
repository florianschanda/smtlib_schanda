(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7714602284421883116038998196017928421497344970703125p-96 {- 3474347997343397 -96 (-2.2359e-029)}
; Y = 1.16051143328325423453861731104552745819091796875p-895 {+ 722879231123168 -895 (4.39343e-270)}
; -1.7714602284421883116038998196017928421497344970703125p-96 < 1.16051143328325423453861731104552745819091796875p-895 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110011111 #b1100010101111110011010101110001101010010111010100101)))
(assert (= y (fp #b0 #b00010000000 #b0010100100010111010001101111110010010101111011100000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
