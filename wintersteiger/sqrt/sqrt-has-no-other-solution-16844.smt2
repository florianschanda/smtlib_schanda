(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6086668599855264982778635385329835116863250732421875p-9 {+ 2741191843823587 -9 (0.00314193)}
; 1.6086668599855264982778635385329835116863250732421875p-9 S == 1.7936927607511419235919447601190768182277679443359375p-5
; [HW: 1.7936927607511419235919447601190768182277679443359375p-5] 

; mpf : + 3574474421565503 -5
; mpfd: + 3574474421565503 -5 (0.0560529) class: Pos. norm. non-zero
; hwf : + 3574474421565503 -5 (0.0560529) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111110110 #b1001101111010001100101110110000111001011111111100011)))
(assert (= r (fp #b0 #b01111111010 #b1100101100101111011100101110001001111111100000111111)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
