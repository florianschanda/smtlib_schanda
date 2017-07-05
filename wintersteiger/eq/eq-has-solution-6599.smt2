(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.65966789208534226673918965389020740985870361328125p632 {- 2970880072983828 632 (-2.95787e+190)}
; Y = -1.1468081064453741202413539213011972606182098388671875p-723 {- 661164933482355 -723 (-2.59899e-218)}
; -1.65966789208534226673918965389020740985870361328125p632 = -1.1468081064453741202413539213011972606182098388671875p-723 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001110111 #b1010100011011111111111101011011010111010010100010100)))
(assert (= y (fp #b1 #b00100101100 #b0010010110010101001101110100111111111000011101110011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
