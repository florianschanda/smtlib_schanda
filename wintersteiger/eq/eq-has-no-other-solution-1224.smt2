(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4733046290151612378593881658161990344524383544921875p-438 {+ 2131574550865411 -438 (2.07565e-132)}
; Y = -1.90122903191678371825901194824837148189544677734375p-782 {- 4058774732315900 -782 (-7.47443e-236)}
; 1.4733046290151612378593881658161990344524383544921875p-438 = -1.90122903191678371825901194824837148189544677734375p-782 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001001001 #b0111100100101010011111011111111010101010011000000011)))
(assert (= y (fp #b1 #b00011110001 #b1110011010110110111100100010001001001001110011111100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
