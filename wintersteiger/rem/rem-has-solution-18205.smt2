(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.883364053547509353592204206506721675395965576171875p-890 {- 3978318022389054 -890 (-2.28159e-268)}
; Y = -1.339380823060616787500975988223217427730560302734375p489 {- 1528435348272486 489 (-2.14078e+147)}
; -1.883364053547509353592204206506721675395965576171875p-890 % -1.339380823060616787500975988223217427730560302734375p489 == -1.883364053547509353592204206506721675395965576171875p-890
; [HW: -1.883364053547509353592204206506721675395965576171875p-890] 

; mpf : - 3978318022389054 -890
; mpfd: - 3978318022389054 -890 (-2.28159e-268) class: Neg. norm. non-zero
; hwf : - 3978318022389054 -890 (-2.28159e-268) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010000101 #b1110001000100100001001011000100001110010110100111110)))
(assert (= y (fp #b1 #b10111101000 #b0101011011100001101010010101111111101111010101100110)))
(assert (= r (fp #b1 #b00010000101 #xe224258872d3e)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
