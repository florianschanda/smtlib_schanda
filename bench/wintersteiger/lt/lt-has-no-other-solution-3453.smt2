(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5399825496491725829173446982167661190032958984375p257 {- 2431865209386584 257 (-3.56636e+077)}
; Y = -1.9900002023767047187874368319171480834484100341796875p-366 {- 4458564542520443 -366 (-1.32396e-110)}
; -1.5399825496491725829173446982167661190032958984375p257 < -1.9900002023767047187874368319171480834484100341796875p-366 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100000000 #b1000101000111100010010111101111100100111011001011000)))
(assert (= y (fp #b1 #b01010010001 #b1111110101110000101001110011110000111101110001111011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
