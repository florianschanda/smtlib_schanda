(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3984596224310805734347695761243812739849090576171875p973 {- 1794502607102803 973 (-1.11644e+293)}
; Y = 1.7817382920002546864424175510066561400890350341796875p-545 {+ 3520636280553595 -545 (1.54702e-164)}
; -1.3984596224310805734347695761243812739849090576171875p973 > 1.7817382920002546864424175510066561400890350341796875p-545 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111001100 #b0110011000000001011100110010011100011110001101010011)))
(assert (= y (fp #b0 #b00111011110 #b1100100000100000000000000010111000101100000001111011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
