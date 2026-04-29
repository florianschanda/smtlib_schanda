(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6107613082247891345133439244818873703479766845703125p-612 {- 2750624400133477 -612 (-9.47706e-185)}
; Y = -1.559363111739556995161137820105068385601043701171875p443 {- 2519147501595070 443 (-3.54189e+133)}
; -1.6107613082247891345133439244818873703479766845703125p-612 < -1.559363111739556995161137820105068385601043701171875p443 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110011011 #b1001110001011010110110100110010001111100110101100101)))
(assert (= y (fp #b1 #b10110111010 #b1000111100110010011010111011111110000010100110111110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
