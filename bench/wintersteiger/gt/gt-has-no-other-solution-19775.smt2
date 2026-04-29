(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3840280453619033806944571551866829395294189453125p-464 {+ 1729508561991688 -464 (2.90554e-140)}
; Y = 1.5256148859160461039863321275333873927593231201171875p-368 {+ 2367159004351891 -368 (2.5375e-111)}
; 1.3840280453619033806944571551866829395294189453125p-464 > 1.5256148859160461039863321275333873927593231201171875p-368 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000101111 #b0110001001001111101010010111011110010011100000001000)))
(assert (= y (fp #b0 #b01010001111 #b1000011010001110101100100111100101001100110110010011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
