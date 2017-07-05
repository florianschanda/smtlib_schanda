(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1011249399282088123896983233862556517124176025390625p738 {- 455426241778545 738 (-1.59211e+222)}
; Y = -0.5032393982184053538020407358999364078044891357421875p-1022 {- 2266388766294563 -1023 (-1.11974e-308)}
; -1.1011249399282088123896983233862556517124176025390625p738 = -0.5032393982184053538020407358999364078044891357421875p-1022 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011100001 #b0001100111100011010100101111010111001101001101110001)))
(assert (= y (fp #b1 #b00000000000 #b1000000011010100010011000001010101101000001000100011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
