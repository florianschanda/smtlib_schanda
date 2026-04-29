(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.804093508378859400664850909379310905933380126953125p-818 {+ 3621315224706066 -818 (1.0321e-246)}
; Y = -1.8974147211134617663219614769332110881805419921875p393 {- 4041596603603384 393 (-3.82781e+118)}
; 1.804093508378859400664850909379310905933380126953125p-818 < -1.8974147211134617663219614769332110881805419921875p393 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011001101 #b1100110111011001000100100111100101101001110000010010)))
(assert (= y (fp #b1 #b10110001000 #b1110010110111100111110001001111000100001100110111000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
