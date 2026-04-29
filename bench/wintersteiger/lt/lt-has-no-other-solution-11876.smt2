(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.345049903273379587886893204995431005954742431640625p-897 {+ 1553966615806218 -897 (1.27301e-270)}
; Y = 1.3857674448354913021574930098722688853740692138671875p-630 {+ 1737342120812787 -630 (3.11023e-190)}
; 1.345049903273379587886893204995431005954742431640625p-897 < 1.3857674448354913021574930098722688853740692138671875p-630 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001111110 #b0101100001010101001100001100001000001100000100001010)))
(assert (= y (fp #b0 #b00110001001 #b0110001011000001101001111011111101101110000011110011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
