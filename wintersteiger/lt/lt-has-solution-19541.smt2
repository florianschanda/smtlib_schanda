(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7086485201808354617014629184268414974212646484375p968 {+ 3191469211423064 968 (4.26274e+291)}
; Y = 1.45637439035011606591751842643134295940399169921875p811 {+ 2055327534322220 811 (1.98884e+244)}
; 1.7086485201808354617014629184268414974212646484375p968 < 1.45637439035011606591751842643134295940399169921875p811 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111000111 #b1011010101101001111111010100101010001001000101011000)))
(assert (= y (fp #b0 #b11100101010 #b0111010011010100111100111011100101001001001000101100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
