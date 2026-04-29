(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2744099196272793417250568381859920918941497802734375p123 {- 1235832411780183 123 (-1.35519e+037)}
; Y = -1.3425155575485450132333653527894057333469390869140625p61 {- 1542552937344225 61 (-3.09563e+018)}
; -1.2744099196272793417250568381859920918941497802734375p123 > -1.3425155575485450132333653527894057333469390869140625p61 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001111010 #b0100011000111111101110100111111001111111010001010111)))
(assert (= y (fp #b1 #b10000111100 #b0101011110101111000110010111111000001010110011100001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
