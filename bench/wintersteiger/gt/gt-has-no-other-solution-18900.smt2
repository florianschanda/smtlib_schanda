(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.608992106109389919055274731363169848918914794921875p-812 {+ 2742656622145822 -812 (5.89111e-245)}
; Y = 1.669007225169759411897985046380199491977691650390625p9 {+ 3012940689982698 9 (854.532)}
; 1.608992106109389919055274731363169848918914794921875p-812 > 1.669007225169759411897985046380199491977691650390625p9 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011010011 #b1001101111100110111010000001101101000011000100011110)))
(assert (= y (fp #b0 #b10000001000 #b1010101101000100000011101011100011100100010011101010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
