(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7497351076184546325720248205470852553844451904296875p379 {+ 3376506751297051 379 (2.15447e+114)}
; Y = -1.7310497936215483161248585020075552165508270263671875p-121 {- 3292355578143283 -121 (-6.51149e-037)}
; 1.7497351076184546325720248205470852553844451904296875p379 > -1.7310497936215483161248585020075552165508270263671875p-121 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101111010 #b1011111111101110101000111101011111100010011000011011)))
(assert (= y (fp #b1 #b01110000110 #b1011101100100110000101000100101101011010001000110011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
