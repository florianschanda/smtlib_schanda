(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4347655643733350228075096310931257903575897216796875p469 {+ 1958010033705275 469 (2.187e+141)}
; Y = -1.2501815850414856878813907314906828105449676513671875p-936 {- 1126717693167795 -936 (-2.15227e-282)}
; 1.4347655643733350228075096310931257903575897216796875p469 < -1.2501815850414856878813907314906828105449676513671875p-936 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111010100 #b0110111101001100110010111100100001101001000100111011)))
(assert (= y (fp #b1 #b00001010111 #b0100000000001011111001100111110111010000100010110011)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
