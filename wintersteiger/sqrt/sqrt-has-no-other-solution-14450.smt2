(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.960336364378223006355028701364062726497650146484375p-616 {+ 4324970492764102 -616 (7.20864e-186)}
; 1.960336364378223006355028701364062726497650146484375p-616 S == 1.4001201249815042881863291768240742385387420654296875p-308
; [HW: 1.4001201249815042881863291768240742385387420654296875p-308] 

; mpf : + 1801980845770139 -308
; mpfd: + 1801980845770139 -308 (2.68489e-093) class: Pos. norm. non-zero
; hwf : + 1801980845770139 -308 (2.68489e-093) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110010111 #b1111010111011000100110101001111000101001111111000110)))
(assert (= r (fp #b0 #b01011001011 #b0110011001101110010001011100001101000100010110011011)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
