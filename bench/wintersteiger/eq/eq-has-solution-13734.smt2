(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.50893085587852038287337563815526664257049560546875p-524 {- 2292020812891852 -524 (-2.74759e-158)}
; Y = 1.0896192914548217256509587969048880040645599365234375p-942 {+ 403609407601143 -942 (2.93102e-284)}
; -1.50893085587852038287337563815526664257049560546875p-524 = 1.0896192914548217256509587969048880040645599365234375p-942 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111110011 #b1000001001001001010010101110010111101100011011001100)))
(assert (= y (fp #b0 #b00001010001 #b0001011011110001010010100011010111100011100111110111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
