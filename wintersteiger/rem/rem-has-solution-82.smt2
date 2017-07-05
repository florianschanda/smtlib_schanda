(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4207657698001294743761491190525703132152557373046875p175 {- 1894960564082123 175 (-6.80412e+052)}
; Y = -1.787951798126705238445310897077433764934539794921875p63 {- 3548619424429342 63 (-1.64909e+019)}
; -1.4207657698001294743761491190525703132152557373046875p175 % -1.787951798126705238445310897077433764934539794921875p63 == -1.9937487754916300985996713279746472835540771484375p61
; [HW: -1.9937487754916300985996713279746472835540771484375p61] 

; mpf : - 4475446615003992 61
; mpfd: - 4475446615003992 61 (-4.59727e+018) class: Neg. norm. non-zero
; hwf : - 4475446615003992 61 (-4.59727e+018) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010101110 #b0110101110110111010011100011010010010001010111001011)))
(assert (= y (fp #b1 #b10000111110 #b1100100110110111001101011000001111000111010100011110)))
(assert (= r (fp #b1 #b10000111100 #xfe6651db2d358)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
