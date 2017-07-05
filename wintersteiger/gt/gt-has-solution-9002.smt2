(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1243330966836009299214538259548135101795196533203125p-150 {- 559946487894085 -150 (-7.87763e-046)}
; Y = -1.8146968848618925118643119276384823024272918701171875p319 {- 3669068587083923 319 (-1.93808e+096)}
; -1.1243330966836009299214538259548135101795196533203125p-150 > -1.8146968848618925118643119276384823024272918701171875p319 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101101001 #b0001111111010100010010110011100000010001000001000101)))
(assert (= y (fp #b1 #b10100111110 #b1101000010001111111110011001110010100010100010010011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
