(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.95364718741122889156258679577149450778961181640625p-837 {- 4294845117868132 -837 (-2.13177e-252)}
; Y = -1.8093618296885181084832083797664381563663482666015625p-285 {- 3645041634593113 -285 (-2.91056e-086)}
; -1.95364718741122889156258679577149450778961181640625p-837 < -1.8093618296885181084832083797664381563663482666015625p-285 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010111010 #b1111010000100010001110001101100111011010100001100100)))
(assert (= y (fp #b1 #b01011100010 #b1100111100110010010101100011110100100100100101011001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
