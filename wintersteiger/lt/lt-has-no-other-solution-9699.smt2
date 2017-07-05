(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5618814741885349572925179018056951463222503662109375p146 {+ 2530489197781871 146 (1.39324e+044)}
; Y = -1.2905199404988767497570734121836721897125244140625p-34 {- 1308385495774440 -34 (-7.51181e-011)}
; 1.5618814741885349572925179018056951463222503662109375p146 < -1.2905199404988767497570734121836721897125244140625p-34 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010010001 #b1000111111010111011101101101101111011110001101101111)))
(assert (= y (fp #b1 #b01111011101 #b0100101001011111100000111100101101000111010011101000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
