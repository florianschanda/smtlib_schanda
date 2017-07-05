(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.57238838428048577355866655125282704830169677734375 1008 {+ 2577808114156796 1008 (4.31316e+303)}
; 1.57238838428048577355866655125282704830169677734375 1008 I == 1.57238838428048577355866655125282704830169677734375 1008
; [HW: 1.57238838428048577355866655125282704830169677734375 1008] 

; mpf : + 2577808114156796 1008
; mpfd: + 2577808114156796 1008 (4.31316e+303) class: Pos. norm. non-zero
; hwf : + 2577808114156796 1008 (4.31316e+303) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111101111 #b1001001010001000000010111000111100011000010011111100)))
(assert (= r (fp #b0 #b11111101111 #b1001001010001000000010111000111100011000010011111100)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
