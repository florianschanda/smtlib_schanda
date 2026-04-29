(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.352459909533529458514067300711758434772491455078125p944 {+ 1587338317238242 944 (2.01113e+284)}
; Y = -1.303958785132497411041185841895639896392822265625p-259 {- 1368908671458704 -259 (-1.40765e-078)}
; 1.352459909533529458514067300711758434772491455078125p944 < -1.303958785132497411041185841895639896392822265625p-259 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110101111 #b0101101000111010110100000000100010011000111111100010)))
(assert (= y (fp #b1 #b01011111100 #b0100110111010000001111100011000101111001110110010000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
