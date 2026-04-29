(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8292326137721512946399116117390803992748260498046875p377 {- 3734531690387723 377 (-5.63089e+113)}
; Y = 1.099609829285231654694143799133598804473876953125p-546 {+ 448602790051408 -546 (4.77376e-165)}
; -1.8292326137721512946399116117390803992748260498046875p377 = 1.099609829285231654694143799133598804473876953125p-546 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101111000 #b1101010001001000100101101010110011101101100100001011)))
(assert (= y (fp #b0 #b00111011101 #b0001100110000000000001111001111100100011111001010000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
