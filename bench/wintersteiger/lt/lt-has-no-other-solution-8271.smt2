(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.855513172149812373135091547737829387187957763671875p836 {+ 3852888803304446 836 (8.50238e+251)}
; Y = 1.5118337210022685379584572729072533547878265380859375p-274 {+ 2305094155181471 -274 (4.98064e-083)}
; 1.855513172149812373135091547737829387187957763671875p836 < 1.5118337210022685379584572729072533547878265380859375p-274 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101000011 #b1101101100000010111010010100011110101110001111111110)))
(assert (= y (fp #b0 #b01011101101 #b1000001100000111100010001110010010110001110110011111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
