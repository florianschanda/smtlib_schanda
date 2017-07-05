(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1523195827365373400397174918907694518566131591796875p476 {- 685986416053499 476 (-2.24828e+143)}
; Y = 1.9635857462383838889508069769362919032573699951171875p-850 {+ 4339604407698707 -850 (2.61549e-256)}
; -1.1523195827365373400397174918907694518566131591796875p476 = 1.9635857462383838889508069769362919032573699951171875p-850 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111011011 #b0010011011111110011010101000101001100100110011111011)))
(assert (= y (fp #b0 #b00010101101 #b1111011010101101100011100011001011111100010100010011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
