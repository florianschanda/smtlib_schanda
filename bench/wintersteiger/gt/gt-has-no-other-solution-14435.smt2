(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6034726022144667467728140763938426971435546875p-764 {+ 2717798986461376 -764 (1.65251e-230)}
; Y = -1.2206882322404373208968308972544036805629730224609375p517 {- 993891440483087 517 (-5.23736e+155)}
; 1.6034726022144667467728140763938426971435546875p-764 > -1.2206882322404373208968308972544036805629730224609375p517 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100000011 #b1001101001111101001011100011001010001011000011000000)))
(assert (= y (fp #b1 #b11000000100 #b0011100001111111000001100010010000010101101100001111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
