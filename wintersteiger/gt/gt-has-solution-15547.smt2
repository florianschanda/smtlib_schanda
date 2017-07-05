(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6732732512098371646658279132680036127567291259765625p-502 {- 3032153163267145 -502 (-1.27794e-151)}
; Y = -1.9867264395312276281657659637858159840106964111328125p-647 {- 4443820825389453 -647 (-3.40197e-195)}
; -1.6732732512098371646658279132680036127567291259765625p-502 > -1.9867264395312276281657659637858159840106964111328125p-647 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000001001 #b1010110001011011101000101100001100110111110001001001)))
(assert (= y (fp #b1 #b00101111000 #b1111110010011010000110101001101111100010100110001101)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
