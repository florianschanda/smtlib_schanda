(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5474410880896687370267272854107432067394256591796875p979 {+ 2465455480327931 979 (7.90642e+294)}
; Y = -1.8279371497951981684337852129829116165637969970703125p-338 {- 3728697439303845 -338 (-3.26455e-102)}
; 1.5474410880896687370267272854107432067394256591796875p979 < -1.8279371497951981684337852129829116165637969970703125p-338 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111010010 #b1000110000100101000110010110000111010100111011111011)))
(assert (= y (fp #b1 #b01010101101 #b1101001111110011101100000110010110000011100010100101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
