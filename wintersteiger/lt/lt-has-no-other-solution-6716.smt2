(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.81230279754677159331777147599495947360992431640625p-5 {- 3658286576343652 -5 (-0.0566345)}
; Y = -1.888499311806682623426922873477451503276824951171875p-110 {- 4001445169571518 -110 (-1.45485e-033)}
; -1.81230279754677159331777147599495947360992431640625p-5 < -1.888499311806682623426922873477451503276824951171875p-110 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111111010 #b1100111111110011000100110111110111101001101001100100)))
(assert (= y (fp #b1 #b01110010001 #b1110001101110100101100001101111010111010011010111110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
