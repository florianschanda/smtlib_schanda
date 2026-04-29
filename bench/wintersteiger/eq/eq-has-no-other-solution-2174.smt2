(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0080154847442612808805506574572063982486724853515625p852 {- 36098534107449 852 (-3.02708e+256)}
; Y = 1.645968183226855341416694500367157161235809326171875p-318 {+ 2909182069273662 -318 (3.08236e-096)}
; -1.0080154847442612808805506574572063982486724853515625p852 = 1.645968183226855341416694500367157161235809326171875p-318 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101010011 #b0000001000001101010011011000010011010110100100111001)))
(assert (= y (fp #b0 #b01011000001 #b1010010101011110001010111011110100110111010000111110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
