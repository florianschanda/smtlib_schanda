(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.524356734824099834924027163651771843433380126953125p-490 {+ 2361492795563026 -490 (4.76858e-148)}
; Y = -1.7331705335698999181914814471383579075336456298828125p639 {- 3301906541784429 639 (-3.95374e+192)}
; 1.524356734824099834924027163651771843433380126953125p-490 = -1.7331705335698999181914814471383579075336456298828125p639 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000010101 #b1000011000111100001111100011001110000001110000010010)))
(assert (= y (fp #b1 #b11001111110 #b1011101110110001000100000110100000010010110101101101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
