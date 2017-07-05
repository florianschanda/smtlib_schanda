(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8666948732187467197007890717941336333751678466796875p161 {+ 3903246708071867 161 (5.45636e+048)}
; Y = 1.880537735747150662746207672171294689178466796875p-158 {+ 3965589418596528 -158 (5.14686e-048)}
; 1.8666948732187467197007890717941336333751678466796875p161 > 1.880537735747150662746207672171294689178466796875p-158 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010100000 #b1101110111011111101101110001100000010101110110111011)))
(assert (= y (fp #b0 #b01101100001 #b1110000101101010111010111100100111101101100010110000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
