(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1396489091038881635853385887457989156246185302734375p958 {+ 628922775002967 958 (2.77656e+288)}
; Y = 1.0448435267908890988763914720038883388042449951171875p-684 {+ 201957290545427 -684 (1.30177e-206)}
; 1.1396489091038881635853385887457989156246185302734375p958 < 1.0448435267908890988763914720038883388042449951171875p-684 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110111101 #b0010001111000000000001111110100110000101111101010111)))
(assert (= y (fp #b0 #b00101010011 #b0000101101111010110111011000100100000001000100010011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
