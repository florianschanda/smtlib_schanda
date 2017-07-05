(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.970115286382782215923725743778049945831298828125p649 {+ 4369010842259920 649 (4.60213e+195)}
; Y = -1.76331127229854711657708321581594645977020263671875p174 {- 3437648361491436 174 (-4.22229e+052)}
; 1.970115286382782215923725743778049945831298828125p649 = -1.76331127229854711657708321581594645977020263671875p174 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010001000 #b1111100001011001011110011011010001011101000111010000)))
(assert (= y (fp #b1 #b10010101101 #b1100001101101000010111100001011100110000101111101100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
