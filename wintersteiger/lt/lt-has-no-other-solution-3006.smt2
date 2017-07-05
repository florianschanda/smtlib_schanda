(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0196304566928560131344738692860119044780731201171875p-577 {+ 88407717447059 -577 (2.06127e-174)}
; Y = 1.353002571935609577025161343044601380825042724609375p1007 {+ 1589782251430038 1007 (1.85568e+303)}
; 1.0196304566928560131344738692860119044780731201171875p-577 < 1.353002571935609577025161343044601380825042724609375p1007 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110111110 #b0000010100000110100000000110100110000000010110010011)))
(assert (= y (fp #b0 #b11111101110 #b0101101001011110011000000110010111011110000010010110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
