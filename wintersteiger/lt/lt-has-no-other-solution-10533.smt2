(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.656178615467026826735263966838829219341278076171875p-536 {+ 2955165768105790 -536 (7.36257e-162)}
; Y = -1.693278763412795040466107820975594222545623779296875p-565 {- 3122249980569742 -565 (-1.40211e-170)}
; 1.656178615467026826735263966838829219341278076171875p-536 < -1.693278763412795040466107820975594222545623779296875p-565 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111100111 #b1010011111111011010100100101110111000011111100111110)))
(assert (= y (fp #b1 #b00111001010 #b1011000101111010101101111000111111011110100010001110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
