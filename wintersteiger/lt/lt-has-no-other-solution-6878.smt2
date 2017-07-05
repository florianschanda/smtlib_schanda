(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.69453843068760168222297579632140696048736572265625p9 {+ 3127923017639172 9 (867.604)}
; Y = -1.5028321470711396568020745689864270389080047607421875p616 {- 2264554670179491 616 (-4.08684e+185)}
; 1.69453843068760168222297579632140696048736572265625p9 < -1.5028321470711396568020745689864270389080047607421875p616 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000001000 #b1011000111001101010001010100010110011110010100000100)))
(assert (= y (fp #b1 #b11001100111 #b1000000010111001100110111000101100001100010010100011)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
