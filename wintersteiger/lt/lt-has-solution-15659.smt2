(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.76002810071935389402142391190864145755767822265625p479 {- 3422862271190788 479 (-2.74718e+144)}
; Y = 1.254436137617322088999571860767900943756103515625p95 {+ 1145878494562960 95 (4.96933e+028)}
; -1.76002810071935389402142391190864145755767822265625p479 < 1.254436137617322088999571860767900943756103515625p95 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111011110 #b1100001010010001001100111001110010100001011100000100)))
(assert (= y (fp #b0 #b10001011110 #b0100000100100010101110100000100111111100101010010000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
