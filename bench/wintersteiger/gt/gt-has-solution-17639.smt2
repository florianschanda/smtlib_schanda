(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.494040913599452125026800786145031452178955078125p-922 {- 2224962474392272 -922 (-4.21412e-278)}
; Y = 1.1537666829010351232653874831157736480236053466796875p644 {+ 692503575815099 644 (8.42239e+193)}
; -1.494040913599452125026800786145031452178955078125p-922 > 1.1537666829010351232653874831157736480236053466796875p644 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001100101 #b0111111001111001011101110001111011001011101011010000)))
(assert (= y (fp #b0 #b11010000011 #b0010011101011101010000001101101001000110001110111011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
