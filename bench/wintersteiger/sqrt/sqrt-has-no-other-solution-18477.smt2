(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2002057439542983541258536206441931426525115966796875p59 {+ 901646513870011 59 (6.91872e+017)}
; 1.2002057439542983541258536206441931426525115966796875p59 S == 1.5493261399423288171561807757825590670108795166015625p29
; [HW: 1.5493261399423288171561807757825590670108795166015625p29] 

; mpf : + 2473944999149145 29
; mpfd: + 2473944999149145 29 (8.31788e+008) class: Pos. norm. non-zero
; hwf : + 2473944999149145 29 (8.31788e+008) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000111010 #b0011001101000000101011110000001011000001010010111011)))
(assert (= r (fp #b0 #b10000011100 #b1000110010100000101000110100110111100011111001011001)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
